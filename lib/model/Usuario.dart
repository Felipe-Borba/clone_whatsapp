class Usuario {
  String? _idUsuario;
  String? _nome;
  String? _email;
  String? _urlImagem;
  String? _senha;

  Usuario();

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {"nome": nome, "email": email};

    return map;
  }

  String? get idUsuario => _idUsuario;

  set idUsuario(String? value) {
    _idUsuario = value;
  }

  String? get senha => _senha;

  set senha(String? value) {
    _senha = value;
  }

  String? get urlImagem => _urlImagem;

  set urlImagem(String? value) {
    _urlImagem = value;
  }

  String? get email => _email;

  set email(String? value) {
    _email = value;
  }

  String? get nome => _nome;

  set nome(String? value) {
    _nome = value;
  }
}
