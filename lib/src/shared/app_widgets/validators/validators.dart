class InputValidators {
  String? emailValidator(String? email) {
    if (email != null && email.isEmpty) {
      return "Insira um endereço de e-mail";
    }
    return null;
  }

  String? passwordValidator(String? password) {
    if (password != null && password.isEmpty) {
      return "Insira uma senha válida!";
    }
    if (password != null && password.length < 6) {
      return "A senha precisa ter pelo menos 6 caracteres";
    }
    return null;
  }
}
