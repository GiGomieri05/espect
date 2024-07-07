import '/flutter_flow/flutter_flow_util.dart';
import 'listade_garrafas_widget.dart' show ListadeGarrafasWidget;
import 'package:flutter/material.dart';

class ListadeGarrafasModel extends FlutterFlowModel<ListadeGarrafasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
