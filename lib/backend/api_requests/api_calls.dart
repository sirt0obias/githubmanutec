import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ConsultacepCall {
  static Future<ApiCallResponse> call({
    String? cep = 'Não localizado',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'consultacep',
      apiUrl: 'https://viacep.com.br/ws/$cep/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static dynamic erro(dynamic response) => getJsonField(
        response,
        r'''$.null''',
      );
}

class TabelaclientesCall {
  static Future<ApiCallResponse> call({
    String? varcliente = '',
    int? varlimit = 10,
    int? varoffset = 0,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'tabelaclientes',
      apiUrl: 'https://fztqxthtivqrefpcltvf.supabase.co/rest/v1/clientes',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6dHF4dGh0aXZxcmVmcGNsdHZmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDQ3NDA0MzUsImV4cCI6MjAyMDMxNjQzNX0.tJOIwsQObFtHswUzwSa6GHJUA7Y5OIfVtddC1xZUCXk',
      },
      params: {
        'cliente': varcliente,
        'limit': varlimit,
        'offset': varoffset,
        'order': "cliente.asc, localidade.asc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
