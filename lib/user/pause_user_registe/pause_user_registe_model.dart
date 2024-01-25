import '/flutter_flow/flutter_flow_util.dart';
import 'pause_user_registe_widget.dart' show PauseUserRegisteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PauseUserRegisteModel extends FlutterFlowModel<PauseUserRegisteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nameField widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldController;
  String? Function(BuildContext, String?)? nameFieldControllerValidator;
  String? _nameFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório...';
    }

    return null;
  }

  // State field(s) for phoneField widget.
  FocusNode? phoneFieldFocusNode;
  TextEditingController? phoneFieldController;
  final phoneFieldMask = MaskTextInputFormatter(mask: '(##) #########');
  String? Function(BuildContext, String?)? phoneFieldControllerValidator;
  String? _phoneFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório...';
    }

    return null;
  }

  // State field(s) for emailField widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  String? _emailFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório...';
    }

    return null;
  }

  // State field(s) for cpfField widget.
  FocusNode? cpfFieldFocusNode;
  TextEditingController? cpfFieldController;
  final cpfFieldMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfFieldControllerValidator;
  String? _cpfFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório...';
    }

    return null;
  }

  // State field(s) for cnpjField widget.
  FocusNode? cnpjFieldFocusNode;
  TextEditingController? cnpjFieldController;
  final cnpjFieldMask = MaskTextInputFormatter(mask: '##.###.###/0001-##');
  String? Function(BuildContext, String?)? cnpjFieldControllerValidator;
  // State field(s) for passwordField widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldControllerValidator;
  String? _passwordFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório...';
    }

    return null;
  }

  // State field(s) for passwordFieldConf widget.
  FocusNode? passwordFieldConfFocusNode;
  TextEditingController? passwordFieldConfController;
  late bool passwordFieldConfVisibility;
  String? Function(BuildContext, String?)? passwordFieldConfControllerValidator;
  String? _passwordFieldConfControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório...';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nameFieldControllerValidator = _nameFieldControllerValidator;
    phoneFieldControllerValidator = _phoneFieldControllerValidator;
    emailFieldControllerValidator = _emailFieldControllerValidator;
    cpfFieldControllerValidator = _cpfFieldControllerValidator;
    passwordFieldVisibility = false;
    passwordFieldControllerValidator = _passwordFieldControllerValidator;
    passwordFieldConfVisibility = false;
    passwordFieldConfControllerValidator =
        _passwordFieldConfControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFieldFocusNode?.dispose();
    nameFieldController?.dispose();

    phoneFieldFocusNode?.dispose();
    phoneFieldController?.dispose();

    emailFieldFocusNode?.dispose();
    emailFieldController?.dispose();

    cpfFieldFocusNode?.dispose();
    cpfFieldController?.dispose();

    cnpjFieldFocusNode?.dispose();
    cnpjFieldController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldController?.dispose();

    passwordFieldConfFocusNode?.dispose();
    passwordFieldConfController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
