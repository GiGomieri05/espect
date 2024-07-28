import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompeticoesRecord extends FirestoreRecord {
  CompeticoesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  bool hasData() => _data != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "cor_principal" field.
  Color? _corPrincipal;
  Color? get corPrincipal => _corPrincipal;
  bool hasCorPrincipal() => _corPrincipal != null;

  // "is_exibir" field.
  bool? _isExibir;
  bool get isExibir => _isExibir ?? false;
  bool hasIsExibir() => _isExibir != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "nivel" field.
  List<int>? _nivel;
  List<int> get nivel => _nivel ?? const [];
  bool hasNivel() => _nivel != null;

  // "ordenacao" field.
  int? _ordenacao;
  int get ordenacao => _ordenacao ?? 0;
  bool hasOrdenacao() => _ordenacao != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _data = snapshotData['data'] as String?;
    _link = snapshotData['link'] as String?;
    _corPrincipal = getSchemaColor(snapshotData['cor_principal']);
    _isExibir = snapshotData['is_exibir'] as bool?;
    _imagem = snapshotData['imagem'] as String?;
    _nivel = getDataList(snapshotData['nivel']);
    _ordenacao = castToType<int>(snapshotData['ordenacao']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('competicoes');

  static Stream<CompeticoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompeticoesRecord.fromSnapshot(s));

  static Future<CompeticoesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompeticoesRecord.fromSnapshot(s));

  static CompeticoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompeticoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompeticoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompeticoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompeticoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompeticoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompeticoesRecordData({
  String? titulo,
  String? cidade,
  String? data,
  String? link,
  Color? corPrincipal,
  bool? isExibir,
  String? imagem,
  int? ordenacao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'cidade': cidade,
      'data': data,
      'link': link,
      'cor_principal': corPrincipal,
      'is_exibir': isExibir,
      'imagem': imagem,
      'ordenacao': ordenacao,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompeticoesRecordDocumentEquality implements Equality<CompeticoesRecord> {
  const CompeticoesRecordDocumentEquality();

  @override
  bool equals(CompeticoesRecord? e1, CompeticoesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.titulo == e2?.titulo &&
        e1?.cidade == e2?.cidade &&
        e1?.data == e2?.data &&
        e1?.link == e2?.link &&
        e1?.corPrincipal == e2?.corPrincipal &&
        e1?.isExibir == e2?.isExibir &&
        e1?.imagem == e2?.imagem &&
        listEquality.equals(e1?.nivel, e2?.nivel) &&
        e1?.ordenacao == e2?.ordenacao;
  }

  @override
  int hash(CompeticoesRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.cidade,
        e?.data,
        e?.link,
        e?.corPrincipal,
        e?.isExibir,
        e?.imagem,
        e?.nivel,
        e?.ordenacao
      ]);

  @override
  bool isValidKey(Object? o) => o is CompeticoesRecord;
}
