import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'formulario_garrafa_widget.dart' show FormularioGarrafaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FormularioGarrafaModel extends FlutterFlowModel<FormularioGarrafaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nomeGarrafa widget.
  FocusNode? nomeGarrafaFocusNode;
  TextEditingController? nomeGarrafaTextController;
  String? Function(BuildContext, String?)? nomeGarrafaTextControllerValidator;
  // State field(s) for volumedagarrafa widget.
  FocusNode? volumedagarrafaFocusNode;
  TextEditingController? volumedagarrafaTextController;
  String? Function(BuildContext, String?)?
      volumedagarrafaTextControllerValidator;
  // State field(s) for retornavel_CheckboxListTile widget.
  bool? retornavelCheckboxListTileValue;
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
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomeGarrafaFocusNode?.dispose();
    nomeGarrafaTextController?.dispose();

    volumedagarrafaFocusNode?.dispose();
    volumedagarrafaTextController?.dispose();

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
