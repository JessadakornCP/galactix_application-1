// ignore: constant_identifier_names
enum FindValidator { EMAIL, PHONENUMBER, USERNAME }

extension FindValidatorExtension on FindValidator {
  String get rawValue {
    switch (this) {
      case FindValidator.EMAIL:
        return 'email';
      case FindValidator.PHONENUMBER:
        return 'phoneNumber';
      case FindValidator.USERNAME:
        return 'username';
      default:
        throw 'ERROR TYPE';
    }
  }
}
