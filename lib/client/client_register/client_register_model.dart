import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'client_register_widget.dart' show ClientRegisterWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ClientRegisterModel extends FlutterFlowModel<ClientRegisterWidget> {
  ///  Local state fields for this page.

  String logradouro = ' ';

  String bairro = ' ';

  String localidade = ' ';

  String uf = ' ';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for t_client widget.
  FocusNode? tClientFocusNode;
  TextEditingController? tClientController;
  String? Function(BuildContext, String?)? tClientControllerValidator;
  String? _tClientControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for t_cnpj widget.
  FocusNode? tCnpjFocusNode;
  TextEditingController? tCnpjController;
  final tCnpjMask = MaskTextInputFormatter(mask: '##.###.###/0001-##');
  String? Function(BuildContext, String?)? tCnpjControllerValidator;
  String? _tCnpjControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for t_telef widget.
  FocusNode? tTelefFocusNode;
  TextEditingController? tTelefController;
  final tTelefMask = MaskTextInputFormatter(mask: '(##) #########');
  String? Function(BuildContext, String?)? tTelefControllerValidator;
  String? _tTelefControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for tf_cep widget.
  FocusNode? tfCepFocusNode;
  TextEditingController? tfCepController;
  final tfCepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? tfCepControllerValidator;
  String? _tfCepControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.length < 9) {
      return 'Digite corretamente o  CEP';
    }
    if (val.length > 9) {
      return 'Digite corretamente o  CEP';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (consultacep)] action in s_cep widget.
  ApiCallResponse? outcep;
  // State field(s) for tf_num widget.
  FocusNode? tfNumFocusNode;
  TextEditingController? tfNumController;
  String? Function(BuildContext, String?)? tfNumControllerValidator;
  String? _tfNumControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }

  // State field(s) for t_email widget.
  FocusNode? tEmailFocusNode;
  TextEditingController? tEmailController;
  String? Function(BuildContext, String?)? tEmailControllerValidator;
  String? _tEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for t_contato widget.
  FocusNode? tContatoFocusNode;
  TextEditingController? tContatoController;
  String? Function(BuildContext, String?)? tContatoControllerValidator;
  String? _tContatoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for dd_t_contato widget.
  String? ddTContatoValue;
  FormFieldController<String>? ddTContatoValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    tClientControllerValidator = _tClientControllerValidator;
    tCnpjControllerValidator = _tCnpjControllerValidator;
    tTelefControllerValidator = _tTelefControllerValidator;
    tfCepControllerValidator = _tfCepControllerValidator;
    tfNumControllerValidator = _tfNumControllerValidator;
    tEmailControllerValidator = _tEmailControllerValidator;
    tContatoControllerValidator = _tContatoControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tClientFocusNode?.dispose();
    tClientController?.dispose();

    tCnpjFocusNode?.dispose();
    tCnpjController?.dispose();

    tTelefFocusNode?.dispose();
    tTelefController?.dispose();

    tfCepFocusNode?.dispose();
    tfCepController?.dispose();

    tfNumFocusNode?.dispose();
    tfNumController?.dispose();

    tEmailFocusNode?.dispose();
    tEmailController?.dispose();

    tContatoFocusNode?.dispose();
    tContatoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
