import '/flutter_flow/flutter_flow_util.dart';
import 'coifa_details_widget.dart' show CoifaDetailsWidget;
import 'package:flutter/material.dart';

class CoifaDetailsModel extends FlutterFlowModel<CoifaDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
