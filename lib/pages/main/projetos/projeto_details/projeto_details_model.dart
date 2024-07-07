import '/flutter_flow/flutter_flow_util.dart';
import 'projeto_details_widget.dart' show ProjetoDetailsWidget;
import 'package:flutter/material.dart';

class ProjetoDetailsModel extends FlutterFlowModel<ProjetoDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
