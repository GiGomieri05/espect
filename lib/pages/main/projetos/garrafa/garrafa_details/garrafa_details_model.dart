import '/flutter_flow/flutter_flow_util.dart';
import 'garrafa_details_widget.dart' show GarrafaDetailsWidget;
import 'package:flutter/material.dart';

class GarrafaDetailsModel extends FlutterFlowModel<GarrafaDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
