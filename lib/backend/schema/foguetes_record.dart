import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoguetesRecord extends FirestoreRecord {
  FoguetesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeFoguete" field.
  String? _nomeFoguete;
  String get nomeFoguete => _nomeFoguete ?? '';
  bool hasNomeFoguete() => _nomeFoguete != null;

  // "dataConstrucao" field.
  DateTime? _dataConstrucao;
  DateTime? get dataConstrucao => _dataConstrucao;
  bool hasDataConstrucao() => _dataConstrucao != null;

  // "garrafaRef" field.
  DocumentReference? _garrafaRef;
  DocumentReference? get garrafaRef => _garrafaRef;
  bool hasGarrafaRef() => _garrafaRef != null;

  // "coifaRef" field.
  DocumentReference? _coifaRef;
  DocumentReference? get coifaRef => _coifaRef;
  bool hasCoifaRef() => _coifaRef != null;

  // "aletaRef" field.
  DocumentReference? _aletaRef;
  DocumentReference? get aletaRef => _aletaRef;
  bool hasAletaRef() => _aletaRef != null;

  // "massaFinal" field.
  double? _massaFinal;
  double get massaFinal => _massaFinal ?? 0.0;
  bool hasMassaFinal() => _massaFinal != null;

  // "diametroFinal" field.
  double? _diametroFinal;
  double get diametroFinal => _diametroFinal ?? 0.0;
  bool hasDiametroFinal() => _diametroFinal != null;

  // "comprimentoFinal" field.
  double? _comprimentoFinal;
  double get comprimentoFinal => _comprimentoFinal ?? 0.0;
  bool hasComprimentoFinal() => _comprimentoFinal != null;

  // "cp" field.
  double? _cp;
  double get cp => _cp ?? 0.0;
  bool hasCp() => _cp != null;

  // "cg" field.
  double? _cg;
  double get cg => _cg ?? 0.0;
  bool hasCg() => _cg != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "statusAtual" field.
  String? _statusAtual;
  String get statusAtual => _statusAtual ?? '';
  bool hasStatusAtual() => _statusAtual != null;

  // "coifa_massaAdicional" field.
  double? _coifaMassaAdicional;
  double get coifaMassaAdicional => _coifaMassaAdicional ?? 0.0;
  bool hasCoifaMassaAdicional() => _coifaMassaAdicional != null;

  // "margemEstatica" field.
  double? _margemEstatica;
  double get margemEstatica => _margemEstatica ?? 0.0;
  bool hasMargemEstatica() => _margemEstatica != null;

  // "aleta_espessura" field.
  double? _aletaEspessura;
  double get aletaEspessura => _aletaEspessura ?? 0.0;
  bool hasAletaEspessura() => _aletaEspessura != null;

  // "aleta_quantidade" field.
  int? _aletaQuantidade;
  int get aletaQuantidade => _aletaQuantidade ?? 0;
  bool hasAletaQuantidade() => _aletaQuantidade != null;

  // "aleta_material" field.
  String? _aletaMaterial;
  String get aletaMaterial => _aletaMaterial ?? '';
  bool hasAletaMaterial() => _aletaMaterial != null;

  // "aleta_massaPorAleta" field.
  double? _aletaMassaPorAleta;
  double get aletaMassaPorAleta => _aletaMassaPorAleta ?? 0.0;
  bool hasAletaMassaPorAleta() => _aletaMassaPorAleta != null;

  // "aleta_MassaFinal" field.
  double? _aletaMassaFinal;
  double get aletaMassaFinal => _aletaMassaFinal ?? 0.0;
  bool hasAletaMassaFinal() => _aletaMassaFinal != null;

  // "aleta_nome" field.
  String? _aletaNome;
  String get aletaNome => _aletaNome ?? '';
  bool hasAletaNome() => _aletaNome != null;

  // "coifa_nome" field.
  String? _coifaNome;
  String get coifaNome => _coifaNome ?? '';
  bool hasCoifaNome() => _coifaNome != null;

  // "garrafa_nome" field.
  String? _garrafaNome;
  String get garrafaNome => _garrafaNome ?? '';
  bool hasGarrafaNome() => _garrafaNome != null;

  // "aleta_imagem" field.
  String? _aletaImagem;
  String get aletaImagem => _aletaImagem ?? '';
  bool hasAletaImagem() => _aletaImagem != null;

  // "lancamentosRef" field.
  List<DocumentReference>? _lancamentosRef;
  List<DocumentReference> get lancamentosRef => _lancamentosRef ?? const [];
  bool hasLancamentosRef() => _lancamentosRef != null;

  // "userDono" field.
  String? _userDono;
  String get userDono => _userDono ?? '';
  bool hasUserDono() => _userDono != null;

  void _initializeFields() {
    _nomeFoguete = snapshotData['nomeFoguete'] as String?;
    _dataConstrucao = snapshotData['dataConstrucao'] as DateTime?;
    _garrafaRef = snapshotData['garrafaRef'] as DocumentReference?;
    _coifaRef = snapshotData['coifaRef'] as DocumentReference?;
    _aletaRef = snapshotData['aletaRef'] as DocumentReference?;
    _massaFinal = castToType<double>(snapshotData['massaFinal']);
    _diametroFinal = castToType<double>(snapshotData['diametroFinal']);
    _comprimentoFinal = castToType<double>(snapshotData['comprimentoFinal']);
    _cp = castToType<double>(snapshotData['cp']);
    _cg = castToType<double>(snapshotData['cg']);
    _imagem = snapshotData['imagem'] as String?;
    _statusAtual = snapshotData['statusAtual'] as String?;
    _coifaMassaAdicional =
        castToType<double>(snapshotData['coifa_massaAdicional']);
    _margemEstatica = castToType<double>(snapshotData['margemEstatica']);
    _aletaEspessura = castToType<double>(snapshotData['aleta_espessura']);
    _aletaQuantidade = castToType<int>(snapshotData['aleta_quantidade']);
    _aletaMaterial = snapshotData['aleta_material'] as String?;
    _aletaMassaPorAleta =
        castToType<double>(snapshotData['aleta_massaPorAleta']);
    _aletaMassaFinal = castToType<double>(snapshotData['aleta_MassaFinal']);
    _aletaNome = snapshotData['aleta_nome'] as String?;
    _coifaNome = snapshotData['coifa_nome'] as String?;
    _garrafaNome = snapshotData['garrafa_nome'] as String?;
    _aletaImagem = snapshotData['aleta_imagem'] as String?;
    _lancamentosRef = getDataList(snapshotData['lancamentosRef']);
    _userDono = snapshotData['userDono'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('foguetes');

  static Stream<FoguetesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoguetesRecord.fromSnapshot(s));

  static Future<FoguetesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoguetesRecord.fromSnapshot(s));

  static FoguetesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FoguetesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoguetesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoguetesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoguetesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoguetesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoguetesRecordData({
  String? nomeFoguete,
  DateTime? dataConstrucao,
  DocumentReference? garrafaRef,
  DocumentReference? coifaRef,
  DocumentReference? aletaRef,
  double? massaFinal,
  double? diametroFinal,
  double? comprimentoFinal,
  double? cp,
  double? cg,
  String? imagem,
  String? statusAtual,
  double? coifaMassaAdicional,
  double? margemEstatica,
  double? aletaEspessura,
  int? aletaQuantidade,
  String? aletaMaterial,
  double? aletaMassaPorAleta,
  double? aletaMassaFinal,
  String? aletaNome,
  String? coifaNome,
  String? garrafaNome,
  String? aletaImagem,
  String? userDono,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeFoguete': nomeFoguete,
      'dataConstrucao': dataConstrucao,
      'garrafaRef': garrafaRef,
      'coifaRef': coifaRef,
      'aletaRef': aletaRef,
      'massaFinal': massaFinal,
      'diametroFinal': diametroFinal,
      'comprimentoFinal': comprimentoFinal,
      'cp': cp,
      'cg': cg,
      'imagem': imagem,
      'statusAtual': statusAtual,
      'coifa_massaAdicional': coifaMassaAdicional,
      'margemEstatica': margemEstatica,
      'aleta_espessura': aletaEspessura,
      'aleta_quantidade': aletaQuantidade,
      'aleta_material': aletaMaterial,
      'aleta_massaPorAleta': aletaMassaPorAleta,
      'aleta_MassaFinal': aletaMassaFinal,
      'aleta_nome': aletaNome,
      'coifa_nome': coifaNome,
      'garrafa_nome': garrafaNome,
      'aleta_imagem': aletaImagem,
      'userDono': userDono,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoguetesRecordDocumentEquality implements Equality<FoguetesRecord> {
  const FoguetesRecordDocumentEquality();

  @override
  bool equals(FoguetesRecord? e1, FoguetesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nomeFoguete == e2?.nomeFoguete &&
        e1?.dataConstrucao == e2?.dataConstrucao &&
        e1?.garrafaRef == e2?.garrafaRef &&
        e1?.coifaRef == e2?.coifaRef &&
        e1?.aletaRef == e2?.aletaRef &&
        e1?.massaFinal == e2?.massaFinal &&
        e1?.diametroFinal == e2?.diametroFinal &&
        e1?.comprimentoFinal == e2?.comprimentoFinal &&
        e1?.cp == e2?.cp &&
        e1?.cg == e2?.cg &&
        e1?.imagem == e2?.imagem &&
        e1?.statusAtual == e2?.statusAtual &&
        e1?.coifaMassaAdicional == e2?.coifaMassaAdicional &&
        e1?.margemEstatica == e2?.margemEstatica &&
        e1?.aletaEspessura == e2?.aletaEspessura &&
        e1?.aletaQuantidade == e2?.aletaQuantidade &&
        e1?.aletaMaterial == e2?.aletaMaterial &&
        e1?.aletaMassaPorAleta == e2?.aletaMassaPorAleta &&
        e1?.aletaMassaFinal == e2?.aletaMassaFinal &&
        e1?.aletaNome == e2?.aletaNome &&
        e1?.coifaNome == e2?.coifaNome &&
        e1?.garrafaNome == e2?.garrafaNome &&
        e1?.aletaImagem == e2?.aletaImagem &&
        listEquality.equals(e1?.lancamentosRef, e2?.lancamentosRef) &&
        e1?.userDono == e2?.userDono;
  }

  @override
  int hash(FoguetesRecord? e) => const ListEquality().hash([
        e?.nomeFoguete,
        e?.dataConstrucao,
        e?.garrafaRef,
        e?.coifaRef,
        e?.aletaRef,
        e?.massaFinal,
        e?.diametroFinal,
        e?.comprimentoFinal,
        e?.cp,
        e?.cg,
        e?.imagem,
        e?.statusAtual,
        e?.coifaMassaAdicional,
        e?.margemEstatica,
        e?.aletaEspessura,
        e?.aletaQuantidade,
        e?.aletaMaterial,
        e?.aletaMassaPorAleta,
        e?.aletaMassaFinal,
        e?.aletaNome,
        e?.coifaNome,
        e?.garrafaNome,
        e?.aletaImagem,
        e?.lancamentosRef,
        e?.userDono
      ]);

  @override
  bool isValidKey(Object? o) => o is FoguetesRecord;
}
