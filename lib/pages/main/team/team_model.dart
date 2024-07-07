import '/flutter_flow/flutter_flow_util.dart';
import 'team_widget.dart' show TeamWidget;
import 'package:flutter/material.dart';

class TeamModel extends FlutterFlowModel<TeamWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
