import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/request_manager.dart';

import 'lancamentos_widget.dart' show LancamentosWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LancamentosModel extends FlutterFlowModel<LancamentosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Query cache managers for this widget.

  final _listaDeLancamentosManager =
      StreamRequestManager<List<LancamentosRecord>>();
  Stream<List<LancamentosRecord>> listaDeLancamentos({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<LancamentosRecord>> Function() requestFn,
  }) =>
      _listaDeLancamentosManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearListaDeLancamentosCache() => _listaDeLancamentosManager.clear();
  void clearListaDeLancamentosCacheKey(String? uniqueKey) =>
      _listaDeLancamentosManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();

    /// Dispose query cache managers for this widget.

    clearListaDeLancamentosCache();
  }
}
