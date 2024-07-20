import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MateriaisRecord extends FirestoreRecord {
  MateriaisRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeMaterial" field.
  String? _nomeMaterial;
  String get nomeMaterial => _nomeMaterial ?? '';
  bool hasNomeMaterial() => _nomeMaterial != null;

  // "descricaoCurta" field.
  String? _descricaoCurta;
  String get descricaoCurta => _descricaoCurta ?? '';
  bool hasDescricaoCurta() => _descricaoCurta != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  bool hasQuantidade() => _quantidade != null;

  // "temQueComprar" field.
  bool? _temQueComprar;
  bool get temQueComprar => _temQueComprar ?? false;
  bool hasTemQueComprar() => _temQueComprar != null;

  // "imagemURL" field.
  String? _imagemURL;
  String get imagemURL => _imagemURL ?? '';
  bool hasImagemURL() => _imagemURL != null;

  // "observacao" field.
  String? _observacao;
  String get observacao => _observacao ?? '';
  bool hasObservacao() => _observacao != null;

  void _initializeFields() {
    _nomeMaterial = snapshotData['nomeMaterial'] as String?;
    _descricaoCurta = snapshotData['descricaoCurta'] as String?;
    _quantidade = castToType<int>(snapshotData['quantidade']);
    _temQueComprar = snapshotData['temQueComprar'] as bool?;
    _imagemURL = snapshotData['imagemURL'] as String?;
    _observacao = snapshotData['observacao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('materiais');

  static Stream<MateriaisRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MateriaisRecord.fromSnapshot(s));

  static Future<MateriaisRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MateriaisRecord.fromSnapshot(s));

  static MateriaisRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MateriaisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MateriaisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MateriaisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MateriaisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MateriaisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMateriaisRecordData({
  String? nomeMaterial,
  String? descricaoCurta,
  int? quantidade,
  bool? temQueComprar,
  String? imagemURL,
  String? observacao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeMaterial': nomeMaterial,
      'descricaoCurta': descricaoCurta,
      'quantidade': quantidade,
      'temQueComprar': temQueComprar,
      'imagemURL': imagemURL,
      'observacao': observacao,
    }.withoutNulls,
  );

  return firestoreData;
}

class MateriaisRecordDocumentEquality implements Equality<MateriaisRecord> {
  const MateriaisRecordDocumentEquality();

  @override
  bool equals(MateriaisRecord? e1, MateriaisRecord? e2) {
    return e1?.nomeMaterial == e2?.nomeMaterial &&
        e1?.descricaoCurta == e2?.descricaoCurta &&
        e1?.quantidade == e2?.quantidade &&
        e1?.temQueComprar == e2?.temQueComprar &&
        e1?.imagemURL == e2?.imagemURL &&
        e1?.observacao == e2?.observacao;
  }

  @override
  int hash(MateriaisRecord? e) => const ListEquality().hash([
        e?.nomeMaterial,
        e?.descricaoCurta,
        e?.quantidade,
        e?.temQueComprar,
        e?.imagemURL,
        e?.observacao
      ]);

  @override
  bool isValidKey(Object? o) => o is MateriaisRecord;
}
