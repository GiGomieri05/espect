import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'formulario_projeto_copy_widget.dart' show FormularioProjetoCopyWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class FormularioProjetoCopyModel
    extends FlutterFlowModel<FormularioProjetoCopyWidget> {
  ///  Local state fields for this page.

  DocumentReference? gararfaSelecionadaPagina;

  DocumentReference? coifaSelecionadaPagina;

  DocumentReference? aletaSelecionadaPagina;

  bool isComoRealizarMedicao = false;

  String? garrafaSelecionadaPaginaNome;

  String? coifaSelecionadaPaginaNome;

  String? aletaSelecionadaPaginaNome;

  String? aletaSelecionadaPaginaImagem;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for nomeFoguete widget.
  FocusNode? nomeFogueteFocusNode;
  TextEditingController? nomeFogueteTextController;
  String? Function(BuildContext, String?)? nomeFogueteTextControllerValidator;
  String? _nomeFogueteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Coloque um nome para o foguete';
    }

    return null;
  }

  // State field(s) for status_DropDown widget.
  String? statusDropDownValue;
  FormFieldController<String>? statusDropDownValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for massaAdicionalCoifa widget.
  FocusNode? massaAdicionalCoifaFocusNode;
  TextEditingController? massaAdicionalCoifaTextController;
  String? Function(BuildContext, String?)?
      massaAdicionalCoifaTextControllerValidator;
  // State field(s) for materialaleta widget.
  FocusNode? materialaletaFocusNode;
  TextEditingController? materialaletaTextController;
  String? Function(BuildContext, String?)? materialaletaTextControllerValidator;
  // State field(s) for espessuraaleta widget.
  FocusNode? espessuraaletaFocusNode;
  TextEditingController? espessuraaletaTextController;
  String? Function(BuildContext, String?)?
      espessuraaletaTextControllerValidator;
  String? _espessuraaletaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe um valor.';
    }

    return null;
  }

  // State field(s) for massaporaleta widget.
  FocusNode? massaporaletaFocusNode;
  TextEditingController? massaporaletaTextController;
  String? Function(BuildContext, String?)? massaporaletaTextControllerValidator;
  // State field(s) for quantidadenofoguete widget.
  FocusNode? quantidadenofogueteFocusNode;
  TextEditingController? quantidadenofogueteTextController;
  String? Function(BuildContext, String?)?
      quantidadenofogueteTextControllerValidator;
  // State field(s) for massatotaldasaletas widget.
  FocusNode? massatotaldasaletasFocusNode;
  TextEditingController? massatotaldasaletasTextController;
  String? Function(BuildContext, String?)?
      massatotaldasaletasTextControllerValidator;
  // State field(s) for diametroFinal widget.
  FocusNode? diametroFinalFocusNode;
  TextEditingController? diametroFinalTextController;
  String? Function(BuildContext, String?)? diametroFinalTextControllerValidator;
  String? _diametroFinalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Coloque um nome para o foguete';
    }

    return null;
  }

  // State field(s) for comprimentoFinal widget.
  FocusNode? comprimentoFinalFocusNode;
  TextEditingController? comprimentoFinalTextController;
  String? Function(BuildContext, String?)?
      comprimentoFinalTextControllerValidator;
  String? _comprimentoFinalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe uma data';
    }

    if (val.length < 10) {
      return 'Informe uma data válida (DD/MM/AAAA)';
    }
    if (val.length > 10) {
      return 'Maximum 10 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for massaFinal widget.
  FocusNode? massaFinalFocusNode;
  TextEditingController? massaFinalTextController;
  String? Function(BuildContext, String?)? massaFinalTextControllerValidator;
  // State field(s) for cg widget.
  FocusNode? cgFocusNode;
  TextEditingController? cgTextController;
  String? Function(BuildContext, String?)? cgTextControllerValidator;
  // State field(s) for cp widget.
  FocusNode? cpFocusNode;
  TextEditingController? cpTextController;
  String? Function(BuildContext, String?)? cpTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    nomeFogueteTextControllerValidator = _nomeFogueteTextControllerValidator;
    espessuraaletaTextControllerValidator =
        _espessuraaletaTextControllerValidator;
    diametroFinalTextControllerValidator =
        _diametroFinalTextControllerValidator;
    comprimentoFinalTextControllerValidator =
        _comprimentoFinalTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    nomeFogueteFocusNode?.dispose();
    nomeFogueteTextController?.dispose();

    massaAdicionalCoifaFocusNode?.dispose();
    massaAdicionalCoifaTextController?.dispose();

    materialaletaFocusNode?.dispose();
    materialaletaTextController?.dispose();

    espessuraaletaFocusNode?.dispose();
    espessuraaletaTextController?.dispose();

    massaporaletaFocusNode?.dispose();
    massaporaletaTextController?.dispose();

    quantidadenofogueteFocusNode?.dispose();
    quantidadenofogueteTextController?.dispose();

    massatotaldasaletasFocusNode?.dispose();
    massatotaldasaletasTextController?.dispose();

    diametroFinalFocusNode?.dispose();
    diametroFinalTextController?.dispose();

    comprimentoFinalFocusNode?.dispose();
    comprimentoFinalTextController?.dispose();

    massaFinalFocusNode?.dispose();
    massaFinalTextController?.dispose();

    cgFocusNode?.dispose();
    cgTextController?.dispose();

    cpFocusNode?.dispose();
    cpTextController?.dispose();
  }
}
