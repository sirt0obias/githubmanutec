import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'client_info_definitive_model.dart';
export 'client_info_definitive_model.dart';

class ClientInfoDefinitiveWidget extends StatefulWidget {
  const ClientInfoDefinitiveWidget({
    super.key,
    required this.paratestclientinfo,
  });

  final dynamic paratestclientinfo;

  @override
  _ClientInfoDefinitiveWidgetState createState() =>
      _ClientInfoDefinitiveWidgetState();
}

class _ClientInfoDefinitiveWidgetState
    extends State<ClientInfoDefinitiveWidget> {
  late ClientInfoDefinitiveModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClientInfoDefinitiveModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, -1.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 0.8,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(22.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).primaryText,
            width: 3.0,
          ),
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, -1.0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Informações do \nCliente',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 50.0,
                          icon: const Icon(
                            Icons.close,
                            color: Color(0xBAD90002),
                            size: 30.0,
                          ),
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 50,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cliente:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 14.0,
                                          ),
                                    ),
                                    Text(
                                      getJsonField(
                                        widget.paratestclientinfo,
                                        r'''$.cliente''',
                                      ).toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 16.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                buttonSize: 40.0,
                                icon: Icon(
                                  Icons.content_copy,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 16.0,
                                ),
                                onPressed: () async {
                                  await Clipboard.setData(ClipboardData(
                                      text: getJsonField(
                                    widget.paratestclientinfo,
                                    r'''$.cliente''',
                                  ).toString()));
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 50,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Telefone:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 14.0,
                                          ),
                                    ),
                                    Text(
                                      getJsonField(
                                        widget.paratestclientinfo,
                                        r'''$.telefone''',
                                      ).toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 16.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 20.0,
                                buttonSize: 40.0,
                                icon: Icon(
                                  Icons.content_copy,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 16.0,
                                ),
                                onPressed: () async {
                                  await Clipboard.setData(ClipboardData(
                                      text: getJsonField(
                                    widget.paratestclientinfo,
                                    r'''$.telefone''',
                                  ).toString()));
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 50,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'CEP:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 14.0,
                                          ),
                                    ),
                                    Text(
                                      getJsonField(
                                        widget.paratestclientinfo,
                                        r'''$.cep''',
                                      ).toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 16.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                buttonSize: 40.0,
                                icon: Icon(
                                  Icons.content_copy,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 16.0,
                                ),
                                onPressed: () async {
                                  await Clipboard.setData(ClipboardData(
                                      text: getJsonField(
                                    widget.paratestclientinfo,
                                    r'''$.cep''',
                                  ).toString()));
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 50,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Email:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 14.0,
                                          ),
                                    ),
                                    Text(
                                      getJsonField(
                                        widget.paratestclientinfo,
                                        r'''$.email''',
                                      ).toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 16.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                buttonSize: 40.0,
                                icon: Icon(
                                  Icons.content_copy,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 16.0,
                                ),
                                onPressed: () async {
                                  await Clipboard.setData(ClipboardData(
                                      text: getJsonField(
                                    widget.paratestclientinfo,
                                    r'''$.cep''',
                                  ).toString()));
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 50,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Endereço:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 14.0,
                                          ),
                                    ),
                                    RichText(
                                      textScaleFactor: MediaQuery.of(context)
                                          .textScaleFactor,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: getJsonField(
                                              widget.paratestclientinfo,
                                              r'''$.logradouro''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          const TextSpan(
                                            text: ', ',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: getJsonField(
                                              widget.paratestclientinfo,
                                              r'''$.numero''',
                                            ).toString(),
                                            style: const TextStyle(
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          const TextSpan(
                                            text: ', ',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: getJsonField(
                                              widget.paratestclientinfo,
                                              r'''$.bairro''',
                                            ).toString(),
                                            style: const TextStyle(
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          const TextSpan(
                                            text: ', ',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: getJsonField(
                                              widget.paratestclientinfo,
                                              r'''$.localidade''',
                                            ).toString(),
                                            style: const TextStyle(
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          const TextSpan(
                                            text: ' - ',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: getJsonField(
                                              widget.paratestclientinfo,
                                              r'''$.uf''',
                                            ).toString(),
                                            style: const TextStyle(
                                              fontSize: 16.0,
                                            ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 20.0,
                                  buttonSize: 40.0,
                                  icon: Icon(
                                    Icons.content_copy,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    size: 16.0,
                                  ),
                                  onPressed: () async {
                                    await Clipboard.setData(ClipboardData(
                                        text: '${getJsonField(
                                      widget.paratestclientinfo,
                                      r'''$.logradouro''',
                                    ).toString()}, ${getJsonField(
                                      widget.paratestclientinfo,
                                      r'''$.numero''',
                                    ).toString()}, ${getJsonField(
                                      widget.paratestclientinfo,
                                      r'''$.bairro''',
                                    ).toString()}, ${getJsonField(
                                      widget.paratestclientinfo,
                                      r'''$.localidade''',
                                    ).toString()} - ${getJsonField(
                                      widget.paratestclientinfo,
                                      r'''$.uf''',
                                    ).toString()}'));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 50,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'CNPJ:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 14.0,
                                          ),
                                    ),
                                    Text(
                                      getJsonField(
                                        widget.paratestclientinfo,
                                        r'''$.cnpj''',
                                      ).toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 16.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                buttonSize: 40.0,
                                icon: Icon(
                                  Icons.content_copy,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 16.0,
                                ),
                                onPressed: () async {
                                  await Clipboard.setData(ClipboardData(
                                      text: getJsonField(
                                    widget.paratestclientinfo,
                                    r'''$.cnpj''',
                                  ).toString()));
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                flex: 50,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Contato:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 14.0,
                                          ),
                                    ),
                                    RichText(
                                      textScaleFactor: MediaQuery.of(context)
                                          .textScaleFactor,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: getJsonField(
                                              widget.paratestclientinfo,
                                              r'''$.nomecontato''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          TextSpan(
                                            text: ' - ',
                                            style: GoogleFonts.getFont(
                                              'Roboto',
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: getJsonField(
                                              widget.paratestclientinfo,
                                              r'''$.tipocontato''',
                                            ).toString(),
                                            style: GoogleFonts.getFont(
                                              'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                            ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
