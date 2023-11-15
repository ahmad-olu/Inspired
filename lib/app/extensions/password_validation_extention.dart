import 'package:form_validator/form_validator.dart';

extension CustomValidationBuilder on ValidationBuilder {
  ValidationBuilder password() => add((value) {
        if (!value!.contains(RegExp(r'^(?=.*\d).+'))) {
          return 'Password does not contain at least one digit.';
        } else if (!value.contains(RegExp('^(?=.*[a-z]).+'))) {
          return 'Password does not contain at least one lowercase letter.';
        } else if (!value.contains(RegExp('^(?=.*[A-Z]).+'))) {
          return 'Password does not contain at least one uppercase letter.';
        } else if (!value
            .contains(RegExp(r'^(?=.*[!@#\$%^&*()_+{}\[\]:;<>,.?~]).+'))) {
          return 'Password does not contain at least one special character.';
        }
        return null;
      });
}
