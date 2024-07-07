import '/flutter_flow/flutter_flow_util.dart';
import 'lancamento_details_widget.dart' show LancamentoDetailsWidget;
import 'package:flutter/material.dart';

class LancamentoDetailsModel extends FlutterFlowModel<LancamentoDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
