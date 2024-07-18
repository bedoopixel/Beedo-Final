class ChangePassword{
  String token;
  String currentPassword;
  String password;
  String passwordConfirmation;

  ChangePassword({
    required this.token,
    required this.currentPassword,
    required this.password,
    required this.passwordConfirmation,
});

  Map<String, dynamic> toJson() {
    return {
      'name': token,
      'email': currentPassword,
      'password': password,
      'password_confirmation': passwordConfirmation,
    };
  }
}