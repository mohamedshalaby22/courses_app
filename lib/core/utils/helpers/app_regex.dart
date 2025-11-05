class AppRegex {
  static final _email = RegExp(r'^.+@[a-zA-Z]+\\.[a-zA-Z]+(\\.[a-zA-Z]+)*\$');
  static final _egyptPhone = RegExp(r'^(010|011|012|015)[0-9]{8}\$');
  static final _password = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}\$',
  );

  static bool isEmailValid(String email) => _email.hasMatch(email);

  static bool isPhoneNumberValid(String phone) => _egyptPhone.hasMatch(phone);

  static bool isPasswordStrong(String password) => _password.hasMatch(password);

  static bool hasLower(String p) => RegExp(r'[a-z]').hasMatch(p);
  static bool hasUpper(String p) => RegExp(r'[A-Z]').hasMatch(p);
  static bool hasDigit(String p) => RegExp(r'[0-9]').hasMatch(p);
  static bool hasSpecial(String p) => RegExp(r'[@$!%*?&]').hasMatch(p);
  static bool hasMinLength(String p) => p.length >= 8;
}
