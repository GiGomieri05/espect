import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoifaRecord extends FirestoreRecord {
  CoifaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "formato" field.
  String? _formato;
  String get formato => _formato ?? '';
  bool hasFormato() => _formato != null;

  // "diametro" field.
  double? _diametro;
  double get diametro => _diametro ?? 0.0;
  bool hasDiametro() => _diametro != null;

  // "altura" field.
  double? _altura;
  double get altura => _altura ?? 0.0;
  bool hasAltura() => _altura != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "massa" field.
  double? _massa;
  double get massa => _massa ?? 0.0;
  bool hasMassa() => _massa != null;

  // "material" field.
  String? _material;
  String get material => _material ?? '';
  bool hasMaterial() => _material != null;

  // "userDono" field.
  String? _userDono;
  String get userDono => _userDono ?? '';
  bool hasUserDono() => _userDono != null;

  void _initializeFields() {
    _formato = snapshotData['formato'] as String?;
    _diametro = castToType<double>(snapshotData['diametro']);
    _altura = castToType<double>(snapshotData['altura']);
    _imagem = snapshotData['imagem'] as String?;
    _massa = castToType<double>(snapshotData['massa']);
    _material = snapshotData['material'] as String?;
    _userDono = snapshotData['userDono'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coifa');

  static Stream<CoifaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoifaRecord.fromSnapshot(s));

  static Future<CoifaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoifaRecord.fromSnapshot(s));

  static CoifaRecord fromSnapshot(DocumentSnapshot snapshot) => CoifaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoifaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoifaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoifaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoifaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoifaRecordData({
  String? formato,
  double? diametro,
  double? altura,
  String? imagem,
  double? massa,
  String? material,
  String? userDono,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'formato': formato,
      'diametro': diametro,
      'altura': altura,
      'imagem': imagem,
      'massa': massa,
      'material': material,
      'userDono': userDono,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoifaRecordDocumentEquality implements Equality<CoifaRecord> {
  const CoifaRecordDocumentEquality();

  @override
  bool equals(CoifaRecord? e1, CoifaRecord? e2) {
    return e1?.formato == e2?.formato &&
        e1?.diametro == e2?.diametro &&
        e1?.altura == e2?.altura &&
        e1?.imagem == e2?.imagem &&
        e1?.massa == e2?.massa &&
        e1?.material == e2?.material &&
        e1?.userDono == e2?.userDono;
  }

  @override
  int hash(CoifaRecord? e) => const ListEquality().hash([
        e?.formato,
        e?.diametro,
        e?.altura,
        e?.imagem,
        e?.massa,
        e?.material,
        e?.userDono
      ]);

  @override
  bool isValidKey(Object? o) => o is CoifaRecord;
}
