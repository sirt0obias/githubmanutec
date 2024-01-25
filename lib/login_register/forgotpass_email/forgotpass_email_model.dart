import '/flutter_flow/flutter_flow_util.dart';
import 'forgotpass_email_widget.dart' show ForgotpassEmailWidget;
import 'package:flutter/material.dart';

class ForgotpassEmailModel extends FlutterFlowModel<ForgotpassEmailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for email_txtfield widget.
  FocusNode? emailTxtfieldFocusNode;
  TextEditingController? emailTxtfieldController;
  String? Function(BuildContext, String?)? emailTxtfieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    emailTxtfieldFocusNode?.dispose();
    emailTxtfieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
