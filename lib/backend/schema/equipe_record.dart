import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EquipeRecord extends FirestoreRecord {
  EquipeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nomeEquipe" field.
  String? _nomeEquipe;
  String get nomeEquipe => _nomeEquipe ?? '';
  bool hasNomeEquipe() => _nomeEquipe != null;

  // "membros" field.
  List<DocumentReference>? _membros;
  List<DocumentReference> get membros => _membros ?? const [];
  bool hasMembros() => _membros != null;

  // "ferramentas" field.
  List<DocumentReference>? _ferramentas;
  List<DocumentReference> get ferramentas => _ferramentas ?? const [];
  bool hasFerramentas() => _ferramentas != null;

  // "materiais" field.
  List<DocumentReference>? _materiais;
  List<DocumentReference> get materiais => _materiais ?? const [];
  bool hasMateriais() => _materiais != null;

  // "foguetes" field.
  List<DocumentReference>? _foguetes;
  List<DocumentReference> get foguetes => _foguetes ?? const [];
  bool hasFoguetes() => _foguetes != null;

  // "lancamentos" field.
  List<DocumentReference>? _lancamentos;
  List<DocumentReference> get lancamentos => _lancamentos ?? const [];
  bool hasLancamentos() => _lancamentos != null;

  // "garrafas" field.
  List<DocumentReference>? _garrafas;
  List<DocumentReference> get garrafas => _garrafas ?? const [];
  bool hasGarrafas() => _garrafas != null;

  void _initializeFields() {
    _nomeEquipe = snapshotData['nomeEquipe'] as String?;
    _membros = getDataList(snapshotData['membros']);
    _ferramentas = getDataList(snapshotData['ferramentas']);
    _materiais = getDataList(snapshotData['materiais']);
    _foguetes = getDataList(snapshotData['foguetes']);
    _lancamentos = getDataList(snapshotData['lancamentos']);
    _garrafas = getDataList(snapshotData['garrafas']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('equipe');

  static Stream<EquipeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EquipeRecord.fromSnapshot(s));

  static Future<EquipeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EquipeRecord.fromSnapshot(s));

  static EquipeRecord fromSnapshot(DocumentSnapshot snapshot) => EquipeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EquipeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EquipeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EquipeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EquipeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEquipeRecordData({
  String? nomeEquipe,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeEquipe': nomeEquipe,
    }.withoutNulls,
  );

  return firestoreData;
}

class EquipeRecordDocumentEquality implements Equality<EquipeRecord> {
  const EquipeRecordDocumentEquality();

  @override
  bool equals(EquipeRecord? e1, EquipeRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nomeEquipe == e2?.nomeEquipe &&
        listEquality.equals(e1?.membros, e2?.membros) &&
        listEquality.equals(e1?.ferramentas, e2?.ferramentas) &&
        listEquality.equals(e1?.materiais, e2?.materiais) &&
        listEquality.equals(e1?.foguetes, e2?.foguetes) &&
        listEquality.equals(e1?.lancamentos, e2?.lancamentos) &&
        listEquality.equals(e1?.garrafas, e2?.garrafas);
  }

  @override
  int hash(EquipeRecord? e) => const ListEquality().hash([
        e?.nomeEquipe,
        e?.membros,
        e?.ferramentas,
        e?.materiais,
        e?.foguetes,
        e?.lancamentos,
        e?.garrafas
      ]);

  @override
  bool isValidKey(Object? o) => o is EquipeRecord;
}
