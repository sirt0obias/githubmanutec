import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'userpg_widget.dart' show UserpgWidget;
import 'package:flutter/material.dart';

class UserpgModel extends FlutterFlowModel<UserpgWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for newpass widget.
  FocusNode? newpassFocusNode;
  TextEditingController? newpassController;
  late bool newpassVisibility;
  String? Function(BuildContext, String?)? newpassControllerValidator;
  // State field(s) for confnewpass widget.
  FocusNode? confnewpassFocusNode;
  TextEditingController? confnewpassController;
  late bool confnewpassVisibility;
  String? Function(BuildContext, String?)? confnewpassControllerValidator;
  Completer<List<UsuariosRow>>? requestCompleter;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    newpassVisibility = false;
    confnewpassVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    newpassFocusNode?.dispose();
    newpassController?.dispose();

    confnewpassFocusNode?.dispose();
    confnewpassController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
