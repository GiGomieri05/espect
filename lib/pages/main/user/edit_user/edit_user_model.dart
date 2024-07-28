import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_user_widget.dart' show EditUserWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditUserModel extends FlutterFlowModel<EditUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nome_user widget.
  FocusNode? nomeUserFocusNode;
  TextEditingController? nomeUserTextController;
  String? Function(BuildContext, String?)? nomeUserTextControllerValidator;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomeUserFocusNode?.dispose();
    nomeUserTextController?.dispose();
  }
}
