import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'projetos_widget.dart' show ProjetosWidget;
import 'package:flutter/material.dart';

class ProjetosModel extends FlutterFlowModel<ProjetosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool firestoreRequestCompleted3 = false;
  String? firestoreRequestLastUniqueKey3;
  bool firestoreRequestCompleted2 = false;
  String? firestoreRequestLastUniqueKey2;
  bool firestoreRequestCompleted5 = false;
  String? firestoreRequestLastUniqueKey5;
  bool firestoreRequestCompleted4 = false;
  String? firestoreRequestLastUniqueKey4;
  bool firestoreRequestCompleted1 = false;
  String? firestoreRequestLastUniqueKey1;

  /// Query cache managers for this widget.

  final _projetosEmConstrucaoManager = FutureRequestManager<int>();
  Future<int> projetosEmConstrucao({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<int> Function() requestFn,
  }) =>
      _projetosEmConstrucaoManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProjetosEmConstrucaoCache() => _projetosEmConstrucaoManager.clear();
  void clearProjetosEmConstrucaoCacheKey(String? uniqueKey) =>
      _projetosEmConstrucaoManager.clearRequest(uniqueKey);

  final _listaDeProjetosManager = FutureRequestManager<List<FoguetesRecord>>();
  Future<List<FoguetesRecord>> listaDeProjetos({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<FoguetesRecord>> Function() requestFn,
  }) =>
      _listaDeProjetosManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearListaDeProjetosCache() => _listaDeProjetosManager.clear();
  void clearListaDeProjetosCacheKey(String? uniqueKey) =>
      _listaDeProjetosManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();

    /// Dispose query cache managers for this widget.

    clearProjetosEmConstrucaoCache();

    clearListaDeProjetosCache();
  }

  /// Additional helper methods.
  Future waitForFirestoreRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleted3;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForFirestoreRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleted2;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForFirestoreRequestCompleted5({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleted5;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForFirestoreRequestCompleted4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleted4;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForFirestoreRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleted1;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
