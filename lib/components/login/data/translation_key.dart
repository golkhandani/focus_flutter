mixin TranslationText {
  String _translate(String text) => '$text-translated';
}

enum LoginText with TranslationText {
  loginBtn('login'),
  ;

  final String id;
  const LoginText(this.id);

  get text => _translate(id);
}
