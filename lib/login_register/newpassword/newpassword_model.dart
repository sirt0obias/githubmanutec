import '/flutter_flow/flutter_flow_util.dart';
import 'newpassword_widget.dart' show NewpasswordWidget;
import 'package:flutter/material.dart';

class NewpasswordModel extends FlutterFlowModel<NewpasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for password_txtfield widget.
  FocusNode? passwordTxtfieldFocusNode;
  TextEditingController? passwordTxtfieldController;
  late bool passwordTxtfieldVisibility;
  String? Function(BuildContext, String?)? passwordTxtfieldControllerValidator;
  // State field(s) for passwordconf_txtfield widget.
  FocusNode? passwordconfTxtfieldFocusNode;
  TextEditingController? passwordconfTxtfieldController;
  late bool passwordconfTxtfieldVisibility;
  String? Function(BuildContext, String?)?
      passwordconfTxtfieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordTxtfieldVisibility = false;
    passwordconfTxtfieldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    passwordTxtfieldFocusNode?.dispose();
    passwordTxtfieldController?.dispose();

    passwordconfTxtfieldFocusNode?.dispose();
    passwordconfTxtfieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
