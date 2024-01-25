import '/flutter_flow/flutter_flow_util.dart';
import 'user_edit_widget.dart' show UserEditWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class UserEditModel extends FlutterFlowModel<UserEditWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  String? _nomeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório...';
    }

    return null;
  }

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

  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfControllerValidator;
  String? _cpfControllerValidator(BuildContext context, String? val) {
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

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nomeControllerValidator = _nomeControllerValidator;
    telefoneControllerValidator = _telefoneControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    cpfControllerValidator = _cpfControllerValidator;
  }

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    cpfFocusNode?.dispose();
    cpfController?.dispose();

    cnpjFocusNode?.dispose();
    cnpjController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
