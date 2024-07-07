import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FerramentasRecord extends FirestoreRecord {
  FerramentasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nomeFerramenta" field.
  String? _nomeFerramenta;
  String get nomeFerramenta => _nomeFerramenta ?? '';
  bool hasNomeFerramenta() => _nomeFerramenta != null;

  // "descricaoCurta" field.
  String? _descricaoCurta;
  String get descricaoCurta => _descricaoCurta ?? '';
  bool hasDescricaoCurta() => _descricaoCurta != null;

  // "check" field.
  bool? _check;
  bool get check => _check ?? false;
  bool hasCheck() => _check != null;

  // "imagemURL" field.
  String? _imagemURL;
  String get imagemURL => _imagemURL ?? '';
  bool hasImagemURL() => _imagemURL != null;

  void _initializeFields() {
    _nomeFerramenta = snapshotData['nomeFerramenta'] as String?;
    _descricaoCurta = snapshotData['descricaoCurta'] as String?;
    _check = snapshotData['check'] as bool?;
    _imagemURL = snapshotData['imagemURL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ferramentas');

  static Stream<FerramentasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FerramentasRecord.fromSnapshot(s));

  static Future<FerramentasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FerramentasRecord.fromSnapshot(s));

  static FerramentasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FerramentasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FerramentasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FerramentasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FerramentasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FerramentasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFerramentasRecordData({
  String? nomeFerramenta,
  String? descricaoCurta,
  bool? check,
  String? imagemURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeFerramenta': nomeFerramenta,
      'descricaoCurta': descricaoCurta,
      'check': check,
      'imagemURL': imagemURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class FerramentasRecordDocumentEquality implements Equality<FerramentasRecord> {
  const FerramentasRecordDocumentEquality();

  @override
  bool equals(FerramentasRecord? e1, FerramentasRecord? e2) {
    return e1?.nomeFerramenta == e2?.nomeFerramenta &&
        e1?.descricaoCurta == e2?.descricaoCurta &&
        e1?.check == e2?.check &&
        e1?.imagemURL == e2?.imagemURL;
  }

  @override
  int hash(FerramentasRecord? e) => const ListEquality()
      .hash([e?.nomeFerramenta, e?.descricaoCurta, e?.check, e?.imagemURL]);

  @override
  bool isValidKey(Object? o) => o is FerramentasRecord;
}
