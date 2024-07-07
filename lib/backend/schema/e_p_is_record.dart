import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EPIsRecord extends FirestoreRecord {
  EPIsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "check" field.
  bool? _check;
  bool get check => _check ?? false;
  bool hasCheck() => _check != null;

  // "observacao" field.
  String? _observacao;
  String get observacao => _observacao ?? '';
  bool hasObservacao() => _observacao != null;

  // "imagemURL" field.
  String? _imagemURL;
  String get imagemURL => _imagemURL ?? '';
  bool hasImagemURL() => _imagemURL != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _check = snapshotData['check'] as bool?;
    _observacao = snapshotData['observacao'] as String?;
    _imagemURL = snapshotData['imagemURL'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('EPIs')
          : FirebaseFirestore.instance.collectionGroup('EPIs');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('EPIs').doc(id);

  static Stream<EPIsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EPIsRecord.fromSnapshot(s));

  static Future<EPIsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EPIsRecord.fromSnapshot(s));

  static EPIsRecord fromSnapshot(DocumentSnapshot snapshot) => EPIsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EPIsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EPIsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EPIsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EPIsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEPIsRecordData({
  String? nome,
  bool? check,
  String? observacao,
  String? imagemURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'check': check,
      'observacao': observacao,
      'imagemURL': imagemURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class EPIsRecordDocumentEquality implements Equality<EPIsRecord> {
  const EPIsRecordDocumentEquality();

  @override
  bool equals(EPIsRecord? e1, EPIsRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.check == e2?.check &&
        e1?.observacao == e2?.observacao &&
        e1?.imagemURL == e2?.imagemURL;
  }

  @override
  int hash(EPIsRecord? e) => const ListEquality()
      .hash([e?.nome, e?.check, e?.observacao, e?.imagemURL]);

  @override
  bool isValidKey(Object? o) => o is EPIsRecord;
}
