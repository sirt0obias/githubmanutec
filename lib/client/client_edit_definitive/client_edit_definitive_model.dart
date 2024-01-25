import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'client_edit_definitive_widget.dart' show ClientEditDefinitiveWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ClientEditDefinitiveModel
    extends FlutterFlowModel<ClientEditDefinitiveWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for cleinte widget.
  FocusNode? cleinteFocusNode;
  TextEditingController? cleinteController;
  String? Function(BuildContext, String?)? cleinteControllerValidator;
  String? _cleinteControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório...';
    }

    return null;
  }

  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepController;
  final cepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepControllerValidator;
  String? _cepControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório...';
    }

    return null;
  }

  // State field(s) for log widget.
  FocusNode? logFocusNode;
  TextEditingController? logController;
  String? Function(BuildContext, String?)? logControllerValidator;
  // State field(s) for num widget.
  FocusNode? numFocusNode;
  TextEditingController? numController;
  String? Function(BuildContext, String?)? numControllerValidator;
  // State field(s) for bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroController;
  String? Function(BuildContext, String?)? bairroControllerValidator;
  // State field(s) for localidade widget.
  FocusNode? localidadeFocusNode;
  TextEditingController? localidadeController;
  final localidadeMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? localidadeControllerValidator;
  // State field(s) for uf widget.
  FocusNode? ufFocusNode;
  TextEditingController? ufController;
  final ufMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? ufControllerValidator;
  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneController;
  final telefoneMask = MaskTextInputFormatter(mask: '(##) #########');
  String? Function(BuildContext, String?)? telefoneControllerValidator;
  String? _telefoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório...';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório...';
    }

    return null;
  }

  // State field(s) for cnpj widget.
  FocusNode? cnpjFocusNode;
  TextEditingController? cnpjController;
  final cnpjMask = MaskTextInputFormatter(mask: '##.###.###/0001-##');
  String? Function(BuildContext, String?)? cnpjControllerValidator;
  String? _cnpjControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório...';
    }

    return null;
  }

  // State field(s) for nomecontato widget.
  FocusNode? nomecontatoFocusNode;
  TextEditingController? nomecontatoController;
  String? Function(BuildContext, String?)? nomecontatoControllerValidator;
  String? _nomecontatoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório...';
    }

    return null;
  }

  // State field(s) for tipocontato widget.
  String? tipocontatoValue;
  FormFieldController<String>? tipocontatoValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cleinteControllerValidator = _cleinteControllerValidator;
    cepControllerValidator = _cepControllerValidator;
    telefoneControllerValidator = _telefoneControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    cnpjControllerValidator = _cnpjControllerValidator;
    nomecontatoControllerValidator = _nomecontatoControllerValidator;
  }

  @override
  void dispose() {
    cleinteFocusNode?.dispose();
    cleinteController?.dispose();

    cepFocusNode?.dispose();
    cepController?.dispose();

    logFocusNode?.dispose();
    logController?.dispose();

    numFocusNode?.dispose();
    numController?.dispose();

    bairroFocusNode?.dispose();
    bairroController?.dispose();

    localidadeFocusNode?.dispose();
    localidadeController?.dispose();

    ufFocusNode?.dispose();
    ufController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    cnpjFocusNode?.dispose();
    cnpjController?.dispose();

    nomecontatoFocusNode?.dispose();
    nomecontatoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
