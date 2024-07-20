import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'formulario_aleta_widget.dart' show FormularioAletaWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class FormularioAletaModel extends FlutterFlowModel<FormularioAletaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nomeGarrafa widget.
  FocusNode? nomeGarrafaFocusNode;
  TextEditingController? nomeGarrafaTextController;
  String? Function(BuildContext, String?)? nomeGarrafaTextControllerValidator;
  // State field(s) for status_DropDown widget.
  String? statusDropDownValue;
  FormFieldController<String>? statusDropDownValueController;
  // State field(s) for diametridagarrafa widget.
  FocusNode? diametridagarrafaFocusNode;
  TextEditingController? diametridagarrafaTextController;
  String? Function(BuildContext, String?)?
      diametridagarrafaTextControllerValidator;
  // State field(s) for alturadagarrafa widget.
  FocusNode? alturadagarrafaFocusNode;
  TextEditingController? alturadagarrafaTextController;
  String? Function(BuildContext, String?)?
      alturadagarrafaTextControllerValidator;
  // State field(s) for massadagarrafa widget.
  FocusNode? massadagarrafaFocusNode;
  TextEditingController? massadagarrafaTextController;
  String? Function(BuildContext, String?)?
      massadagarrafaTextControllerValidator;
  // State field(s) for pressaolimitedagarrafaempsi widget.
  FocusNode? pressaolimitedagarrafaempsiFocusNode;
  TextEditingController? pressaolimitedagarrafaempsiTextController;
  String? Function(BuildContext, String?)?
      pressaolimitedagarrafaempsiTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomeGarrafaFocusNode?.dispose();
    nomeGarrafaTextController?.dispose();

    diametridagarrafaFocusNode?.dispose();
    diametridagarrafaTextController?.dispose();

    alturadagarrafaFocusNode?.dispose();
    alturadagarrafaTextController?.dispose();

    massadagarrafaFocusNode?.dispose();
    massadagarrafaTextController?.dispose();

    pressaolimitedagarrafaempsiFocusNode?.dispose();
    pressaolimitedagarrafaempsiTextController?.dispose();
  }
}
