import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage(name: 'fComment')
class FeedBackCommentPage extends StatelessWidget {
  const FeedBackCommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeedCommentView();
  }
}

class FeedCommentView extends HookWidget {
  const FeedCommentView({super.key});

  @override
  Widget build(BuildContext context) {
    final addFeedBackBtn = useState<bool>(false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('FeedBack Comment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              width: double.maxFinite,
              child: Card(
                child: Column(
                  children: [
                    Text('Feature'),
                    Text('upVotes'),
                    Text('Title'),
                    Text('description'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.5,
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return const SizedBox(
                    height: 100,
                    child: Card(
                      child: ListTile(
                        title: Text(
                          'username',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('🔵 Comment'),
                        leading: Text(
                          '🔼 image',
                          textScaleFactor: 1.5,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            onPressed: () {},
            label: const Text('up vote 👍'),
          ),
          const SizedBox(height: 30),
          FloatingActionButton.extended(
            onPressed: () => addFeedBackBtn.value = !addFeedBackBtn.value,
            label: Text(
              addFeedBackBtn.value == true ? 'Close' : 'Add Comment ◀️',
            ),
          ),
        ],
      ),
      bottomSheet: addFeedBackBtn.value == false
          ? null
          : SizedBox(
              height: 120,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                child: ListView(
                  children: const [
                    SizedBox(height: 4),
                    FeedBackTextInput(helperText: 'Comment'),
                  ],
                ),
              ),
            ),
    );
  }
}

class FeedBackTextInput extends StatelessWidget {
  const FeedBackTextInput({
    this.visibility = false,
    this.isPassword = false,
    super.key,
    this.onChanged,
    this.controller,
    this.helperText,
    this.hintText,
    this.enabled = true,
    this.initialValue,
    this.maxLines = 1,
    this.onVisibilityPressed,
    this.validator,
  });
  final void Function(String)? onChanged;
  final TextEditingController? controller;

  final String? helperText;
  final String? hintText;

  final String? initialValue;
  final int? maxLines;

  final void Function()? onVisibilityPressed;
  final bool enabled;
  final bool visibility;
  final bool isPassword;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7, bottom: 3),
          child: Text(
            '$helperText: ',
            style: const TextStyle(fontWeight: FontWeight.w500),
            textScaleFactor: 1.2,
          ),
        ),
        TextFormField(
          initialValue: initialValue,
          decoration: InputDecoration(
            border: border(),
            // helperText: helperText,
            hintText: hintText,
            enabledBorder: border(),

            enabled: enabled,
            suffixIcon: !isPassword
                ? null
                : IconButton(
                    onPressed: onVisibilityPressed,
                    icon: Icon(
                      visibility ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
          ),
          maxLines: maxLines,
          onChanged: onChanged,
          obscureText: visibility,
          controller: controller,
          validator: validator,
        ),
      ],
    );
  }

  OutlineInputBorder border() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(
        width: 1.5,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    );
  }
}
