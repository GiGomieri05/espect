import '/flutter_flow/flutter_flow_util.dart';
import 'aleta_details_widget.dart' show AletaDetailsWidget;
import 'package:flutter/material.dart';

class AletaDetailsModel extends FlutterFlowModel<AletaDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
