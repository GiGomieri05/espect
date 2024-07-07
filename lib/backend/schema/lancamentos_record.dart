import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LancamentosRecord extends FirestoreRecord {
  LancamentosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "fogueteRef" field.
  DocumentReference? _fogueteRef;
  DocumentReference? get fogueteRef => _fogueteRef;
  bool hasFogueteRef() => _fogueteRef != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "temperaturaAmbiente" field.
  double? _temperaturaAmbiente;
  double get temperaturaAmbiente => _temperaturaAmbiente ?? 0.0;
  bool hasTemperaturaAmbiente() => _temperaturaAmbiente != null;

  // "vinagre" field.
  double? _vinagre;
  double get vinagre => _vinagre ?? 0.0;
  bool hasVinagre() => _vinagre != null;

  // "bicarbonato" field.
  double? _bicarbonato;
  double get bicarbonato => _bicarbonato ?? 0.0;
  bool hasBicarbonato() => _bicarbonato != null;

  // "concentracaoVinagre" field.
  double? _concentracaoVinagre;
  double get concentracaoVinagre => _concentracaoVinagre ?? 0.0;
  bool hasConcentracaoVinagre() => _concentracaoVinagre != null;

  // "pressao" field.
  double? _pressao;
  double get pressao => _pressao ?? 0.0;
  bool hasPressao() => _pressao != null;

  // "tempoPressurizacao" field.
  double? _tempoPressurizacao;
  double get tempoPressurizacao => _tempoPressurizacao ?? 0.0;
  bool hasTempoPressurizacao() => _tempoPressurizacao != null;

  // "tempoVoo" field.
  double? _tempoVoo;
  double get tempoVoo => _tempoVoo ?? 0.0;
  bool hasTempoVoo() => _tempoVoo != null;

  // "distancia" field.
  double? _distancia;
  double get distancia => _distancia ?? 0.0;
  bool hasDistancia() => _distancia != null;

  // "velocidadeInicial" field.
  double? _velocidadeInicial;
  double get velocidadeInicial => _velocidadeInicial ?? 0.0;
  bool hasVelocidadeInicial() => _velocidadeInicial != null;

  // "apogeu" field.
  double? _apogeu;
  double get apogeu => _apogeu ?? 0.0;
  bool hasApogeu() => _apogeu != null;

  // "userDono" field.
  String? _userDono;
  String get userDono => _userDono ?? '';
  bool hasUserDono() => _userDono != null;

  // "vento" field.
  String? _vento;
  String get vento => _vento ?? '';
  bool hasVento() => _vento != null;

  // "direcaoVento" field.
  String? _direcaoVento;
  String get direcaoVento => _direcaoVento ?? '';
  bool hasDirecaoVento() => _direcaoVento != null;

  // "pouso" field.
  String? _pouso;
  String get pouso => _pouso ?? '';
  bool hasPouso() => _pouso != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "nomeFoguete" field.
  String? _nomeFoguete;
  String get nomeFoguete => _nomeFoguete ?? '';
  bool hasNomeFoguete() => _nomeFoguete != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _fogueteRef = snapshotData['fogueteRef'] as DocumentReference?;
    _data = snapshotData['data'] as DateTime?;
    _temperaturaAmbiente =
        castToType<double>(snapshotData['temperaturaAmbiente']);
    _vinagre = castToType<double>(snapshotData['vinagre']);
    _bicarbonato = castToType<double>(snapshotData['bicarbonato']);
    _concentracaoVinagre =
        castToType<double>(snapshotData['concentracaoVinagre']);
    _pressao = castToType<double>(snapshotData['pressao']);
    _tempoPressurizacao =
        castToType<double>(snapshotData['tempoPressurizacao']);
    _tempoVoo = castToType<double>(snapshotData['tempoVoo']);
    _distancia = castToType<double>(snapshotData['distancia']);
    _velocidadeInicial = castToType<double>(snapshotData['velocidadeInicial']);
    _apogeu = castToType<double>(snapshotData['apogeu']);
    _userDono = snapshotData['userDono'] as String?;
    _vento = snapshotData['vento'] as String?;
    _direcaoVento = snapshotData['direcaoVento'] as String?;
    _pouso = snapshotData['pouso'] as String?;
    _imagem = snapshotData['imagem'] as String?;
    _nomeFoguete = snapshotData['nomeFoguete'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('lancamentos')
          : FirebaseFirestore.instance.collectionGroup('lancamentos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('lancamentos').doc(id);

  static Stream<LancamentosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LancamentosRecord.fromSnapshot(s));

  static Future<LancamentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LancamentosRecord.fromSnapshot(s));

  static LancamentosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LancamentosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LancamentosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LancamentosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LancamentosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LancamentosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLancamentosRecordData({
  DocumentReference? fogueteRef,
  DateTime? data,
  double? temperaturaAmbiente,
  double? vinagre,
  double? bicarbonato,
  double? concentracaoVinagre,
  double? pressao,
  double? tempoPressurizacao,
  double? tempoVoo,
  double? distancia,
  double? velocidadeInicial,
  double? apogeu,
  String? userDono,
  String? vento,
  String? direcaoVento,
  String? pouso,
  String? imagem,
  String? nomeFoguete,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fogueteRef': fogueteRef,
      'data': data,
      'temperaturaAmbiente': temperaturaAmbiente,
      'vinagre': vinagre,
      'bicarbonato': bicarbonato,
      'concentracaoVinagre': concentracaoVinagre,
      'pressao': pressao,
      'tempoPressurizacao': tempoPressurizacao,
      'tempoVoo': tempoVoo,
      'distancia': distancia,
      'velocidadeInicial': velocidadeInicial,
      'apogeu': apogeu,
      'userDono': userDono,
      'vento': vento,
      'direcaoVento': direcaoVento,
      'pouso': pouso,
      'imagem': imagem,
      'nomeFoguete': nomeFoguete,
    }.withoutNulls,
  );

  return firestoreData;
}

class LancamentosRecordDocumentEquality implements Equality<LancamentosRecord> {
  const LancamentosRecordDocumentEquality();

  @override
  bool equals(LancamentosRecord? e1, LancamentosRecord? e2) {
    return e1?.fogueteRef == e2?.fogueteRef &&
        e1?.data == e2?.data &&
        e1?.temperaturaAmbiente == e2?.temperaturaAmbiente &&
        e1?.vinagre == e2?.vinagre &&
        e1?.bicarbonato == e2?.bicarbonato &&
        e1?.concentracaoVinagre == e2?.concentracaoVinagre &&
        e1?.pressao == e2?.pressao &&
        e1?.tempoPressurizacao == e2?.tempoPressurizacao &&
        e1?.tempoVoo == e2?.tempoVoo &&
        e1?.distancia == e2?.distancia &&
        e1?.velocidadeInicial == e2?.velocidadeInicial &&
        e1?.apogeu == e2?.apogeu &&
        e1?.userDono == e2?.userDono &&
        e1?.vento == e2?.vento &&
        e1?.direcaoVento == e2?.direcaoVento &&
        e1?.pouso == e2?.pouso &&
        e1?.imagem == e2?.imagem &&
        e1?.nomeFoguete == e2?.nomeFoguete;
  }

  @override
  int hash(LancamentosRecord? e) => const ListEquality().hash([
        e?.fogueteRef,
        e?.data,
        e?.temperaturaAmbiente,
        e?.vinagre,
        e?.bicarbonato,
        e?.concentracaoVinagre,
        e?.pressao,
        e?.tempoPressurizacao,
        e?.tempoVoo,
        e?.distancia,
        e?.velocidadeInicial,
        e?.apogeu,
        e?.userDono,
        e?.vento,
        e?.direcaoVento,
        e?.pouso,
        e?.imagem,
        e?.nomeFoguete
      ]);

  @override
  bool isValidKey(Object? o) => o is LancamentosRecord;
}
