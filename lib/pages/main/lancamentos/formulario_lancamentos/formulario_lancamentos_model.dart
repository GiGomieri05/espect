import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'formulario_lancamentos_widget.dart' show FormularioLancamentosWidget;
import 'package:flutter/material.dart';

class FormularioLancamentosModel
    extends FlutterFlowModel<FormularioLancamentosWidget> {
  ///  Local state fields for this page.

  DocumentReference? fogueteSelecionadoPagina;

  String fogueteNomePagina = 'Foguete';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for temperatura widget.
  FocusNode? temperaturaFocusNode;
  TextEditingController? temperaturaTextController;
  String? Function(BuildContext, String?)? temperaturaTextControllerValidator;
  // State field(s) for vento_DropDown widget.
  String? ventoDropDownValue;
  FormFieldController<String>? ventoDropDownValueController;
  // State field(s) for direcaovento_DropDown widget.
  String? direcaoventoDropDownValue;
  FormFieldController<String>? direcaoventoDropDownValueController;
  // State field(s) for vinagre widget.
  FocusNode? vinagreFocusNode;
  TextEditingController? vinagreTextController;
  String? Function(BuildContext, String?)? vinagreTextControllerValidator;
  // State field(s) for bicarbonato widget.
  FocusNode? bicarbonatoFocusNode;
  TextEditingController? bicarbonatoTextController;
  String? Function(BuildContext, String?)? bicarbonatoTextControllerValidator;
  // State field(s) for concentracaovinagre widget.
  FocusNode? concentracaovinagreFocusNode;
  TextEditingController? concentracaovinagreTextController;
  String? Function(BuildContext, String?)?
      concentracaovinagreTextControllerValidator;
  // State field(s) for pressao widget.
  FocusNode? pressaoFocusNode;
  TextEditingController? pressaoTextController;
  String? Function(BuildContext, String?)? pressaoTextControllerValidator;
  // State field(s) for tempopressurizacao widget.
  FocusNode? tempopressurizacaoFocusNode;
  TextEditingController? tempopressurizacaoTextController;
  String? Function(BuildContext, String?)?
      tempopressurizacaoTextControllerValidator;
  // State field(s) for pouso_DropDown widget.
  String? pousoDropDownValue;
  FormFieldController<String>? pousoDropDownValueController;
  // State field(s) for tempodevoo widget.
  FocusNode? tempodevooFocusNode;
  TextEditingController? tempodevooTextController;
  String? Function(BuildContext, String?)? tempodevooTextControllerValidator;
  // State field(s) for alcance widget.
  FocusNode? alcanceFocusNode;
  TextEditingController? alcanceTextController;
  String? Function(BuildContext, String?)? alcanceTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    temperaturaFocusNode?.dispose();
    temperaturaTextController?.dispose();

    vinagreFocusNode?.dispose();
    vinagreTextController?.dispose();

    bicarbonatoFocusNode?.dispose();
    bicarbonatoTextController?.dispose();

    concentracaovinagreFocusNode?.dispose();
    concentracaovinagreTextController?.dispose();

    pressaoFocusNode?.dispose();
    pressaoTextController?.dispose();

    tempopressurizacaoFocusNode?.dispose();
    tempopressurizacaoTextController?.dispose();

    tempodevooFocusNode?.dispose();
    tempodevooTextController?.dispose();

    alcanceFocusNode?.dispose();
    alcanceTextController?.dispose();
  }
}
