import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GarrafaRecord extends FirestoreRecord {
  GarrafaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "volume" field.
  double? _volume;
  double get volume => _volume ?? 0.0;
  bool hasVolume() => _volume != null;

  // "isRetornavel" field.
  bool? _isRetornavel;
  bool get isRetornavel => _isRetornavel ?? false;
  bool hasIsRetornavel() => _isRetornavel != null;

  // "diametro" field.
  double? _diametro;
  double get diametro => _diametro ?? 0.0;
  bool hasDiametro() => _diametro != null;

  // "altura" field.
  double? _altura;
  double get altura => _altura ?? 0.0;
  bool hasAltura() => _altura != null;

  // "massa" field.
  double? _massa;
  double get massa => _massa ?? 0.0;
  bool hasMassa() => _massa != null;

  // "pressaoLimite" field.
  int? _pressaoLimite;
  int get pressaoLimite => _pressaoLimite ?? 0;
  bool hasPressaoLimite() => _pressaoLimite != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "projects" field.
  List<DocumentReference>? _projects;
  List<DocumentReference> get projects => _projects ?? const [];
  bool hasProjects() => _projects != null;

  // "userDono" field.
  String? _userDono;
  String get userDono => _userDono ?? '';
  bool hasUserDono() => _userDono != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _volume = castToType<double>(snapshotData['volume']);
    _isRetornavel = snapshotData['isRetornavel'] as bool?;
    _diametro = castToType<double>(snapshotData['diametro']);
    _altura = castToType<double>(snapshotData['altura']);
    _massa = castToType<double>(snapshotData['massa']);
    _pressaoLimite = castToType<int>(snapshotData['pressaoLimite']);
    _imagem = snapshotData['imagem'] as String?;
    _projects = getDataList(snapshotData['projects']);
    _userDono = snapshotData['userDono'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('garrafa');

  static Stream<GarrafaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GarrafaRecord.fromSnapshot(s));

  static Future<GarrafaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GarrafaRecord.fromSnapshot(s));

  static GarrafaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GarrafaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GarrafaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GarrafaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GarrafaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GarrafaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGarrafaRecordData({
  String? nome,
  double? volume,
  bool? isRetornavel,
  double? diametro,
  double? altura,
  double? massa,
  int? pressaoLimite,
  String? imagem,
  String? userDono,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'volume': volume,
      'isRetornavel': isRetornavel,
      'diametro': diametro,
      'altura': altura,
      'massa': massa,
      'pressaoLimite': pressaoLimite,
      'imagem': imagem,
      'userDono': userDono,
    }.withoutNulls,
  );

  return firestoreData;
}

class GarrafaRecordDocumentEquality implements Equality<GarrafaRecord> {
  const GarrafaRecordDocumentEquality();

  @override
  bool equals(GarrafaRecord? e1, GarrafaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        e1?.volume == e2?.volume &&
        e1?.isRetornavel == e2?.isRetornavel &&
        e1?.diametro == e2?.diametro &&
        e1?.altura == e2?.altura &&
        e1?.massa == e2?.massa &&
        e1?.pressaoLimite == e2?.pressaoLimite &&
        e1?.imagem == e2?.imagem &&
        listEquality.equals(e1?.projects, e2?.projects) &&
        e1?.userDono == e2?.userDono;
  }

  @override
  int hash(GarrafaRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.volume,
        e?.isRetornavel,
        e?.diametro,
        e?.altura,
        e?.massa,
        e?.pressaoLimite,
        e?.imagem,
        e?.projects,
        e?.userDono
      ]);

  @override
  bool isValidKey(Object? o) => o is GarrafaRecord;
}
