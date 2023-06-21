import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'excluirconta_model.dart';
export 'excluirconta_model.dart';

class ExcluircontaWidget extends StatefulWidget {
  const ExcluircontaWidget({Key? key}) : super(key: key);

  @override
  _ExcluircontaWidgetState createState() => _ExcluircontaWidgetState();
}

class _ExcluircontaWidgetState extends State<ExcluircontaWidget> {
  late ExcluircontaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExcluircontaModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'excluirconta'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF1A1B24),
        appBar: AppBar(
          backgroundColor: Color(0xFF1A1B24),
          automaticallyImplyLeading: true,
          title: Text(
            'Excluir conta',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.always,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            22.0, 22.0, 22.0, 0.0),
                        child: Text(
                          'Conforme exigido pelas leis de privacidade de dados, desativaremos a sua conta conforme solicitado. Os seus dados serão excluídos e este processo é irreversível. ',
                          textAlign: TextAlign.justify,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 50.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'EXCLUIRCONTA_SOLICITAR_EXCLUSÃO_BTN_ON_T');
                        logFirebaseEvent('Button_alert_dialog');
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Solicitação de exclusão de conta.'),
                              content: Text(
                                  'Recebemos seu pedido de exclusão da conta, dentro de 24 horas seus dados será apagado e você perderá o acesso. '),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                        logFirebaseEvent('Button_backend_call');
                        _model.apiResult08p = await EnviarMensagemCall.call(
                          nome: 'excluir minha conta${currentUserDisplayName}',
                          whatsapp: '5543999592336',
                        );

                        setState(() {});
                      },
                      text: 'Solicitar exclusão',
                      icon: Icon(
                        Icons.double_arrow,
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        width: 270.0,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
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
