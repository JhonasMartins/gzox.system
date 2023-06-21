import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Color(0xFF1A1B24),
          child: Center(
            child: Image.asset(
              'assets/images/logo_sem_fundo.png',
              width: 150.0,
              fit: BoxFit.cover,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'Inicio': ParameterData.none(),
  'AREA_PRIVADA': ParameterData.none(),
  'CADASTRAR': ParameterData.none(),
  'LOGIN': ParameterData.none(),
  'PAINEL': ParameterData.none(),
  'Cadastrar_veiculo': ParameterData.none(),
  'Cadastrar_o_produto': (data) async => ParameterData(
        allParams: {
          'placa': getParameter<String>(data, 'placa'),
          'whatsapp': getParameter<String>(data, 'whatsapp'),
          'email': getParameter<String>(data, 'email'),
          'quilometragem': getParameter<String>(data, 'quilometragem'),
          'marca': getParameter<String>(data, 'marca'),
          'modelo': getParameter<String>(data, 'modelo'),
          'tipo': getParameter<String>(data, 'tipo'),
          'user': getParameter<DocumentReference>(data, 'user'),
          'nome': getParameter<String>(data, 'nome'),
          'codigo': getParameter<String>(data, 'codigo'),
        },
      ),
  'sucesso': ParameterData.none(),
  'Servicos_realizados': ParameterData.none(),
  'Alterar_dados_do_proprietario': ParameterData.none(),
  'Perfil': ParameterData.none(),
  'editarperfil': ParameterData.none(),
  'Notificacoes': ParameterData.none(),
  'manutencao': (data) async => ParameterData(
        allParams: {
          'document': await getDocumentParameter<VeiculoRecord>(
              data, 'document', VeiculoRecord.fromSnapshot),
        },
      ),
  'Solicitar_codigo': ParameterData.none(),
  'retorno': ParameterData.none(),
  'Redefinirsenha': ParameterData.none(),
  'mapa': (data) async => ParameterData(
        allParams: {
          'cities': await getDocumentParameter<MapasRecord>(
              data, 'cities', MapasRecord.fromSnapshot),
        },
      ),
  'excluirconta': ParameterData.none(),
  'Cadastrar_o_produtoCopy': (data) async => ParameterData(
        allParams: {
          'document': await getDocumentParameter<VeiculoRecord>(
              data, 'document', VeiculoRecord.fromSnapshot),
        },
      ),
  'Detalhes_da_aplicacaoCopy': (data) async => ParameterData(
        allParams: {
          'placa3': getParameter<String>(data, 'placa3'),
        },
      ),
  'validacaodecodigo1': (data) async => ParameterData(
        allParams: {
          'placa': getParameter<String>(data, 'placa'),
          'referencia': await getDocumentParameter<VeiculoRecord>(
              data, 'referencia', VeiculoRecord.fromSnapshot),
        },
      ),
  'CLIENTE': (data) async => ParameterData(
        allParams: {
          'placa3': getParameter<String>(data, 'placa3'),
          'referencia': await getDocumentParameter<VeiculoRecord>(
              data, 'referencia', VeiculoRecord.fromSnapshot),
        },
      ),
  'validacaod': (data) async => ParameterData(
        allParams: {
          'placa': getParameter<String>(data, 'placa'),
          'marca': getParameter<String>(data, 'marca'),
          'modelo': getParameter<String>(data, 'modelo'),
          'tipo': getParameter<String>(data, 'tipo'),
          'nome': getParameter<String>(data, 'nome'),
          'email': getParameter<String>(data, 'email'),
          'whatsapp': getParameter<String>(data, 'whatsapp'),
          'quilometragem': getParameter<String>(data, 'quilometragem'),
        },
      ),
  'validacaodocodigo2': (data) async => ParameterData(
        allParams: {
          'codigo': getParameter<String>(data, 'codigo'),
          'placa': getParameter<String>(data, 'placa'),
          'marca': getParameter<String>(data, 'marca'),
          'modelo': getParameter<String>(data, 'modelo'),
          'quilometragem': getParameter<String>(data, 'quilometragem'),
          'nome': getParameter<String>(data, 'nome'),
          'email': getParameter<String>(data, 'email'),
          'whatsapp': getParameter<String>(data, 'whatsapp'),
          'tipo': getParameter<String>(data, 'tipo'),
        },
      ),
  'Alterar_dados_do_proprietarioCopy': (data) async => ParameterData(
        allParams: {
          'referencia': await getDocumentParameter<VeiculoRecord>(
              data, 'referencia', VeiculoRecord.fromSnapshot),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
