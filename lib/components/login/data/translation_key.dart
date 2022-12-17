mixin TranslationText {
  String _translate(String text) => '$text-translated';
}

enum LoginText with TranslationText {
  loginBtn('login'),
  enterUsername('Enter your username'),
  enterPassword('Enter your password');

  final String id;
  const LoginText(this.id);

  get text => _translate(id);
}
