// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

class Conversa {
  String? _idRemetente;
  String? _idDestinatario;
  String? _nome;
  String? _mensagem;
  String? _caminhoFoto;
  String? _tipoMensagem; //texto ou imagem

  Conversa();

  salvar() async {
    /*

    + conversas
      + jamilton
          + ultima_conversa
            + jose
              idRe
              idDes
              ...

    */
    FirebaseFirestore db = FirebaseFirestore.instance;
    await db
        .collection("conversas")
        .doc(idRemetente)
        .collection("ultima_conversa")
        .doc(idDestinatario)
        .set(toMap());
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "idRemetente": idRemetente,
      "idDestinatario": idDestinatario,
      "nome": nome,
      "mensagem": mensagem,
      "caminhoFoto": caminhoFoto,
      "tipoMensagem": tipoMensagem,
    };

    return map;
  }

  String? get idRemetente => _idRemetente;

  set idRemetente(String? value) {
    _idRemetente = value;
  }

  String? get nome => _nome;

  set nome(String? value) {
    _nome = value;
  }

  String? get mensagem => _mensagem;

  String? get caminhoFoto => _caminhoFoto;

  set caminhoFoto(String? value) {
    _caminhoFoto = value;
  }

  set mensagem(String? value) {
    _mensagem = value;
  }

  String? get idDestinatario => _idDestinatario;

  set idDestinatario(String? value) {
    _idDestinatario = value;
  }

  String? get tipoMensagem => _tipoMensagem;

  set tipoMensagem(String? value) {
    _tipoMensagem = value;
  }
}
