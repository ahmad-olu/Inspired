import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

class AsyncTextFormField extends StatefulWidget {
  const AsyncTextFormField({
    required this.validator,
    required this.validationDebounce,
    required this.usernameChanged,
    required this.readOnly,
    super.key,
    //required this.controller,
    this.isValidatingMessage = 'checking usernameAvailability',
    this.valueIsInvalidMessage = 'please enter a valid value',
    this.hintText = 'Enter a username',
    this.decoration = const InputDecoration(),
  });
  final Future<bool> Function(String) validator;
  final Duration validationDebounce;
  //final TextEditingController controller;
  final String hintText;
  final String isValidatingMessage;
  final String valueIsInvalidMessage;
  final InputDecoration? decoration;
  final void Function(String) usernameChanged;
  final bool readOnly;

  @override
  _AsyncTextFormFieldState createState() => _AsyncTextFormFieldState();
}

class _AsyncTextFormFieldState extends State<AsyncTextFormField> {
  Timer? _debounce;
  bool isValidating = false;
  bool isValid = false;
  bool isDirty = false;
  bool isWaiting = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      readOnly: widget.readOnly,
      autocorrect: false,
      validator: (value) {
        // final usernameRegex = RegExp(
        //   r'^(?=.{6,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$',
        // );
        if (isValidating) {
          return widget.isValidatingMessage;
        }
        if (value?.isEmpty ?? false) {
          return "Username Field can't be empty";
        }
        if (value!.length < 6) {
          return 'Username to small must be greater than 6';
        }
        if (!isWaiting && !isValid) {
          return widget.valueIsInvalidMessage;
        }
        // else if (!usernameRegex.hasMatch(value)) {
        //   return 'must be greater than 6 with combination';
        // }

        return null;
      },
      onChanged: (text) async {
        isDirty = true;
        if (text.isEmpty) {
          setState(() {
            isValid = false;
            log('is empty');
          });
          cancelTimer();
          return;
        }
        isWaiting = true;
        cancelTimer();
        _debounce = Timer(widget.validationDebounce, () async {
          isWaiting = false;
          isValid = await validate(text);
          log(isValid.toString());
          setState(() {});
          isValidating = false;
          widget.usernameChanged(text);
        });
      },
      //textAlign: TextAlign.start,
      //controller: widget.controller,
      //maxLines: 1,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: 'Username',
        helperMaxLines: 1,
        suffix: SizedBox(height: 20, width: 20, child: _getSuffixIcon()),
        filled: false,
        fillColor: Theme.of(context).scaffoldBackgroundColor,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 3,
          ),
        ),
        hintText: widget.hintText,
      ),
      keyboardType: TextInputType.text,
    );
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  void cancelTimer() {
    if (_debounce?.isActive ?? false) {
      _debounce?.cancel();
    }
  }

  Future<bool> validate(String text) async {
    setState(() {
      isValidating = true;
    });
    final isValid = await widget.validator(text);
    isValidating = false;
    return isValid;
  }

  Widget _getSuffixIcon() {
    if (isValidating) {
      return const CircularProgressIndicator();
    } else {
      if (!isValid && isDirty) {
        return const Icon(
          Icons.cancel_outlined,
          color: Colors.red,
          size: 20,
        );
      } else if (isValid) {
        return const Icon(
          Icons.check_outlined,
          color: Colors.green,
          size: 20,
        );
      } else {
        return const SizedBox.shrink();
      }
    }
  }
}
