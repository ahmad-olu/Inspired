import 'package:form_validator/form_validator.dart';

extension CustomValidationBuilder on ValidationBuilder {
  ValidationBuilder username() => add((value) {
        if (!value!.contains(RegExp(r'^([a-zA-Z])[a-zA-Z_-]*[\w_-]*[\S]$'))) {
          return 'Username must contain either uppercase or lowercase or _ or -';
        } else if (!value.contains(RegExp(r'^([a-zA-Z])[0-9_-]*[\S]$'))) {
          return 'Username must have no white space';
        } else if (!value.contains(RegExp(r'^[a-zA-Z]*[\S]$'))) {
          return 'Username consists of zero or more alphabetic characters followed by a non-whitespace character.';
        }
        return null;
      });
}
