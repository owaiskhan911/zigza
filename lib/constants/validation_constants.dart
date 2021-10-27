import 'package:form_field_validator/form_field_validator.dart';

class ValidationConstants {

  static MultiValidator passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
  ]);

  static MultiValidator emailValidator = MultiValidator([
    RequiredValidator(errorText: 'email is required'),
    EmailValidator(errorText: 'enter a valid email address')
  ]);

  static MultiValidator commonValidator = MultiValidator([
    RequiredValidator(errorText: 'fill the required field'),
  ]);

}