import '/flutter_flow/flutter_flow_util.dart';
import 'listade_coifas_widget.dart' show ListadeCoifasWidget;
import 'package:flutter/material.dart';

class ListadeCoifasModel extends FlutterFlowModel<ListadeCoifasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
