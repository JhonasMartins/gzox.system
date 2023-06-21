import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class XanoCall {
  static Future<ApiCallResponse> call({
    String? whatsapp = '',
    String? nome = '',
    String? email = '',
  }) {
    final body = '''
{
  "whatsapp_numero": "${whatsapp}",
  "nome": "${nome}",
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Xano',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:p3HikNZx/whatsapp',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EnviarMensagemCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? whatsapp = '',
    String? mensagem = '',
  }) {
    final body = '''
{
  "phone": "${whatsapp}",
  "message": "${nome}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Enviar mensagem',
      apiUrl:
          'https://api.z-api.io/instances/3B06FDC7049EB007D10CE23BBED8D15C/token/B324A8D2123A130F8BF2844B/send-messages',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EnviarFotoCall {
  static Future<ApiCallResponse> call({
    String? imagem = '',
    String? whatsapp = '',
  }) {
    final body = '''
{
  "phone": "${whatsapp}",
  "image": "${imagem}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Enviar foto',
      apiUrl:
          'https://api.z-api.io/instances/3B06FDC7049EB007D10CE23BBED8D15C/token/B324A8D2123A130F8BF2844B/send-messages',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ContatoCall {
  static Future<ApiCallResponse> call({
    String? whatsappParaEnviar = '',
    String? nomeDoContato = '',
    String? whatsappDoAplicador = '',
  }) {
    final body = '''
{
  "phone": "${whatsappParaEnviar}",
  "contactName": "${nomeDoContato}",
  "contactPhone": "${whatsappDoAplicador}",
  "contactBusinessDescription": "Segue o contato do aplicador credenciado"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'contato',
      apiUrl:
          'https://api.z-api.io/instances/3B06FDC7049EB007D10CE23BBED8D15C/token/B324A8D2123A130F8BF2844B/send-messages',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ManutencaoxanoCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? whatsapp = '',
    String? nome = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "nome": "${nome}",
  "whatsapp": "${whatsapp}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'manutencaoxano',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:p3HikNZx/manutencao',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class BubbleCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? whatsapp = '',
    String? placa = '',
    String? marca = '',
    String? modelo = '',
    String? whatsappDoDono = '',
    String? emailDoDono = '',
    String? produto = '',
    String? credenciado = '',
  }) {
    final body = '''
{
  "nome": "${nome}",
  "email": "${email}",
  "whatsapp": "${whatsapp}",
  "placa": "${placa}",
  "marca": "${marca}",
  "modelo": "${modelo}",
  "whatsapp do aplicador": "${whatsappDoDono}",
  "email do aplicador": "${emailDoDono}",
  "produto": "${produto}",
  "aplicador": "${credenciado}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Bubble',
      apiUrl:
          'https://gzox-manager-2-0.bubbleapps.io/version-test/api/1.1/wf/gzox',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ManutencaobubbleCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? whatsappDoAplicador = '',
    String? emailDoAplicador = '',
    String? whatsapp = '',
    String? email = '',
    String? placa = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "nome": "${nome}",
  "whatsapp": "${whatsapp}",
  "whatsapp aplicador": "${whatsappDoAplicador}",
  "email aplicador": "${emailDoAplicador}",
  "placa": "${placa}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'manutencaobubble',
      apiUrl:
          'https://gzox-manager-2-0.bubbleapps.io/version-test/api/1.1/wf/manutencao22',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class BandoDeDadosAntigoCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Bando de dados antigo',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:p3HikNZx/p_gina4',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GzoxenvioCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? whastapp = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "whatsapp": "${whastapp}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'gzoxenvio',
      apiUrl:
          'https://gzox-manager-2-0.bubbleapps.io/version-test/api/1.1/wf/gzozx',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
