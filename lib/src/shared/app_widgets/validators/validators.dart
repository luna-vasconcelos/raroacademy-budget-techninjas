class InputValidators {
  bool isValidEmail(String email) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }

  bool isValidPassword(String password) {
    return RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(password);
  }

  String? emailValidator(String email) {
    if (email.isEmpty || !isValidEmail(email)) {
      return "Insira um endereço de e-mail";
    }
    return null;
  }

  String? passwordValidator(String password) {
    if (password.isEmpty || !isValidPassword(password)) {
      return "Digite uma senha valida";
    }
    return null;
  }
}
