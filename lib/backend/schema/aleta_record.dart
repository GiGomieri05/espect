import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AletaRecord extends FirestoreRecord {
  AletaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nomeFormato" field.
  String? _nomeFormato;
  String get nomeFormato => _nomeFormato ?? '';
  bool hasNomeFormato() => _nomeFormato != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "comprimento" field.
  double? _comprimento;
  double get comprimento => _comprimento ?? 0.0;
  bool hasComprimento() => _comprimento != null;

  // "largura" field.
  double? _largura;
  double get largura => _largura ?? 0.0;
  bool hasLargura() => _largura != null;

  // "borda" field.
  double? _borda;
  double get borda => _borda ?? 0.0;
  bool hasBorda() => _borda != null;

  // "diagonal" field.
  double? _diagonal;
  double get diagonal => _diagonal ?? 0.0;
  bool hasDiagonal() => _diagonal != null;

  // "userDono" field.
  String? _userDono;
  String get userDono => _userDono ?? '';
  bool hasUserDono() => _userDono != null;

  void _initializeFields() {
    _nomeFormato = snapshotData['nomeFormato'] as String?;
    _imagem = snapshotData['imagem'] as String?;
    _comprimento = castToType<double>(snapshotData['comprimento']);
    _largura = castToType<double>(snapshotData['largura']);
    _borda = castToType<double>(snapshotData['borda']);
    _diagonal = castToType<double>(snapshotData['diagonal']);
    _userDono = snapshotData['userDono'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('aleta');

  static Stream<AletaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AletaRecord.fromSnapshot(s));

  static Future<AletaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AletaRecord.fromSnapshot(s));

  static AletaRecord fromSnapshot(DocumentSnapshot snapshot) => AletaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AletaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AletaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AletaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AletaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAletaRecordData({
  String? nomeFormato,
  String? imagem,
  double? comprimento,
  double? largura,
  double? borda,
  double? diagonal,
  String? userDono,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeFormato': nomeFormato,
      'imagem': imagem,
      'comprimento': comprimento,
      'largura': largura,
      'borda': borda,
      'diagonal': diagonal,
      'userDono': userDono,
    }.withoutNulls,
  );

  return firestoreData;
}

class AletaRecordDocumentEquality implements Equality<AletaRecord> {
  const AletaRecordDocumentEquality();

  @override
  bool equals(AletaRecord? e1, AletaRecord? e2) {
    return e1?.nomeFormato == e2?.nomeFormato &&
        e1?.imagem == e2?.imagem &&
        e1?.comprimento == e2?.comprimento &&
        e1?.largura == e2?.largura &&
        e1?.borda == e2?.borda &&
        e1?.diagonal == e2?.diagonal &&
        e1?.userDono == e2?.userDono;
  }

  @override
  int hash(AletaRecord? e) => const ListEquality().hash([
        e?.nomeFormato,
        e?.imagem,
        e?.comprimento,
        e?.largura,
        e?.borda,
        e?.diagonal,
        e?.userDono
      ]);

  @override
  bool isValidKey(Object? o) => o is AletaRecord;
}
