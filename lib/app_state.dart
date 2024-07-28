import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _selectedGarrafa = '0';
  String get selectedGarrafa => _selectedGarrafa;
  set selectedGarrafa(String value) {
    _selectedGarrafa = value;
  }

  String _selectedCoifa = '0';
  String get selectedCoifa => _selectedCoifa;
  set selectedCoifa(String value) {
    _selectedCoifa = value;
  }

  String _selectedAleta = '0';
  String get selectedAleta => _selectedAleta;
  set selectedAleta(String value) {
    _selectedAleta = value;
  }

  bool _isProjectCreated = false;
  bool get isProjectCreated => _isProjectCreated;
  set isProjectCreated(bool value) {
    _isProjectCreated = value;
  }

  DocumentReference? _projectRef =
      FirebaseFirestore.instance.doc('/foguetes/AsNfQdn9pAy9Qo8FBOvX');
  DocumentReference? get projectRef => _projectRef;
  set projectRef(DocumentReference? value) {
    _projectRef = value;
  }

  String _selectedFoguete = '';
  String get selectedFoguete => _selectedFoguete;
  set selectedFoguete(String value) {
    _selectedFoguete = value;
  }

  final _queryDeGarrafasEmListaManager =
      StreamRequestManager<List<GarrafaRecord>>();
  Stream<List<GarrafaRecord>> queryDeGarrafasEmLista({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<GarrafaRecord>> Function() requestFn,
  }) =>
      _queryDeGarrafasEmListaManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryDeGarrafasEmListaCache() =>
      _queryDeGarrafasEmListaManager.clear();
  void clearQueryDeGarrafasEmListaCacheKey(String? uniqueKey) =>
      _queryDeGarrafasEmListaManager.clearRequest(uniqueKey);

  final _listaDeCoifasManager = FutureRequestManager<List<CoifaRecord>>();
  Future<List<CoifaRecord>> listaDeCoifas({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<CoifaRecord>> Function() requestFn,
  }) =>
      _listaDeCoifasManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearListaDeCoifasCache() => _listaDeCoifasManager.clear();
  void clearListaDeCoifasCacheKey(String? uniqueKey) =>
      _listaDeCoifasManager.clearRequest(uniqueKey);

  final _queryDeDocumentoIndividualDaCoifaManager =
      FutureRequestManager<CoifaRecord>();
  Future<CoifaRecord> queryDeDocumentoIndividualDaCoifa({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<CoifaRecord> Function() requestFn,
  }) =>
      _queryDeDocumentoIndividualDaCoifaManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryDeDocumentoIndividualDaCoifaCache() =>
      _queryDeDocumentoIndividualDaCoifaManager.clear();
  void clearQueryDeDocumentoIndividualDaCoifaCacheKey(String? uniqueKey) =>
      _queryDeDocumentoIndividualDaCoifaManager.clearRequest(uniqueKey);

  final _listaDeAletasManager = FutureRequestManager<List<AletaRecord>>();
  Future<List<AletaRecord>> listaDeAletas({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<AletaRecord>> Function() requestFn,
  }) =>
      _listaDeAletasManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearListaDeAletasCache() => _listaDeAletasManager.clear();
  void clearListaDeAletasCacheKey(String? uniqueKey) =>
      _listaDeAletasManager.clearRequest(uniqueKey);

  final _queryDeDocumentoIndividualDaAletaManager =
      FutureRequestManager<AletaRecord>();
  Future<AletaRecord> queryDeDocumentoIndividualDaAleta({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<AletaRecord> Function() requestFn,
  }) =>
      _queryDeDocumentoIndividualDaAletaManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryDeDocumentoIndividualDaAletaCache() =>
      _queryDeDocumentoIndividualDaAletaManager.clear();
  void clearQueryDeDocumentoIndividualDaAletaCacheKey(String? uniqueKey) =>
      _queryDeDocumentoIndividualDaAletaManager.clearRequest(uniqueKey);

  final _documentoIndividualDoProjetoManager =
      FutureRequestManager<FoguetesRecord>();
  Future<FoguetesRecord> documentoIndividualDoProjeto({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<FoguetesRecord> Function() requestFn,
  }) =>
      _documentoIndividualDoProjetoManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearDocumentoIndividualDoProjetoCache() =>
      _documentoIndividualDoProjetoManager.clear();
  void clearDocumentoIndividualDoProjetoCacheKey(String? uniqueKey) =>
      _documentoIndividualDoProjetoManager.clearRequest(uniqueKey);

  final _garrafaIndividualManager = FutureRequestManager<GarrafaRecord>();
  Future<GarrafaRecord> garrafaIndividual({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<GarrafaRecord> Function() requestFn,
  }) =>
      _garrafaIndividualManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearGarrafaIndividualCache() => _garrafaIndividualManager.clear();
  void clearGarrafaIndividualCacheKey(String? uniqueKey) =>
      _garrafaIndividualManager.clearRequest(uniqueKey);

  final _queryDeListaDeCoifasManager =
      StreamRequestManager<List<CoifaRecord>>();
  Stream<List<CoifaRecord>> queryDeListaDeCoifas({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<CoifaRecord>> Function() requestFn,
  }) =>
      _queryDeListaDeCoifasManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryDeListaDeCoifasCache() => _queryDeListaDeCoifasManager.clear();
  void clearQueryDeListaDeCoifasCacheKey(String? uniqueKey) =>
      _queryDeListaDeCoifasManager.clearRequest(uniqueKey);

  final _lancamentoIndividualManager =
      FutureRequestManager<LancamentosRecord>();
  Future<LancamentosRecord> lancamentoIndividual({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<LancamentosRecord> Function() requestFn,
  }) =>
      _lancamentoIndividualManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLancamentoIndividualCache() => _lancamentoIndividualManager.clear();
  void clearLancamentoIndividualCacheKey(String? uniqueKey) =>
      _lancamentoIndividualManager.clearRequest(uniqueKey);

  final _competicaoSelecionadaManager =
      FutureRequestManager<CompeticoesRecord>();
  Future<CompeticoesRecord> competicaoSelecionada({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<CompeticoesRecord> Function() requestFn,
  }) =>
      _competicaoSelecionadaManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCompeticaoSelecionadaCache() =>
      _competicaoSelecionadaManager.clear();
  void clearCompeticaoSelecionadaCacheKey(String? uniqueKey) =>
      _competicaoSelecionadaManager.clearRequest(uniqueKey);
}
