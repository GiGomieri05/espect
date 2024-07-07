import '/flutter_flow/flutter_flow_util.dart';
import 'listade_aletas_widget.dart' show ListadeAletasWidget;
import 'package:flutter/material.dart';

class ListadeAletasModel extends FlutterFlowModel<ListadeAletasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
