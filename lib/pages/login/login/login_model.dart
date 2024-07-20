import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for cadastrar_enderecoEmail widget.
  FocusNode? cadastrarEnderecoEmailFocusNode;
  TextEditingController? cadastrarEnderecoEmailTextController;
  String? Function(BuildContext, String?)?
      cadastrarEnderecoEmailTextControllerValidator;
  // State field(s) for cadastrar_senha widget.
  FocusNode? cadastrarSenhaFocusNode;
  TextEditingController? cadastrarSenhaTextController;
  late bool cadastrarSenhaVisibility;
  String? Function(BuildContext, String?)?
      cadastrarSenhaTextControllerValidator;
  // State field(s) for cadastrar_confirmarSenha widget.
  FocusNode? cadastrarConfirmarSenhaFocusNode;
  TextEditingController? cadastrarConfirmarSenhaTextController;
  late bool cadastrarConfirmarSenhaVisibility;
  String? Function(BuildContext, String?)?
      cadastrarConfirmarSenhaTextControllerValidator;
  // State field(s) for entrar-enderecoEmail widget.
  FocusNode? entrarEnderecoEmailFocusNode;
  TextEditingController? entrarEnderecoEmailTextController;
  String? Function(BuildContext, String?)?
      entrarEnderecoEmailTextControllerValidator;
  // State field(s) for entrar-senha widget.
  FocusNode? entrarSenhaFocusNode;
  TextEditingController? entrarSenhaTextController;
  late bool entrarSenhaVisibility;
  String? Function(BuildContext, String?)? entrarSenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    cadastrarSenhaVisibility = false;
    cadastrarConfirmarSenhaVisibility = false;
    entrarSenhaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    cadastrarEnderecoEmailFocusNode?.dispose();
    cadastrarEnderecoEmailTextController?.dispose();

    cadastrarSenhaFocusNode?.dispose();
    cadastrarSenhaTextController?.dispose();

    cadastrarConfirmarSenhaFocusNode?.dispose();
    cadastrarConfirmarSenhaTextController?.dispose();

    entrarEnderecoEmailFocusNode?.dispose();
    entrarEnderecoEmailTextController?.dispose();

    entrarSenhaFocusNode?.dispose();
    entrarSenhaTextController?.dispose();
  }
}
