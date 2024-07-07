import '/flutter_flow/flutter_flow_util.dart';
import 'formulario_coifa_edit_widget.dart' show FormularioCoifaEditWidget;
import 'package:flutter/material.dart';

class FormularioCoifaEditModel
    extends FlutterFlowModel<FormularioCoifaEditWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nomeGarrafa widget.
  FocusNode? nomeGarrafaFocusNode;
  TextEditingController? nomeGarrafaTextController;
  String? Function(BuildContext, String?)? nomeGarrafaTextControllerValidator;
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
