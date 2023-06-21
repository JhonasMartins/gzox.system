import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'validacaod_model.dart';
export 'validacaod_model.dart';

class ValidacaodWidget extends StatefulWidget {
  const ValidacaodWidget({
    Key? key,
    this.placa,
    this.marca,
    this.modelo,
    this.tipo,
    this.nome,
    this.email,
    this.whatsapp,
    this.quilometragem,
  }) : super(key: key);

  final String? placa;
  final String? marca;
  final String? modelo;
  final String? tipo;
  final String? nome;
  final String? email;
  final String? whatsapp;
  final String? quilometragem;

  @override
  _ValidacaodWidgetState createState() => _ValidacaodWidgetState();
}

class _ValidacaodWidgetState extends State<ValidacaodWidget> {
  late ValidacaodModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ValidacaodModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'validacaod'});
    _model.marcaController ??= TextEditingController();
    _model.digiteOCodigoController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.marcaController?.text =
              'PARA NOVA APLICAÇÃO DO PRODUTO PRINCIPAL, É NECESSÁRIO VALIDAR O CÓDIGO DE AUTENTICIDADE LOCALIZADO NO CERTIFICADO DO PRODUTO.';
        }));
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
        backgroundColor: FlutterFlowTheme.of(context).customColor4,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          title: Text(
            'Código de autenticidade',
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
          child: Container(
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 1.0,
            decoration: BoxDecoration(),
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.always,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 16.0, 5.0, 0.0),
                      child: TextFormField(
                        controller: _model.marcaController,
                        onFieldSubmitted: (_) async {
                          logFirebaseEvent(
                              'VALIDACAOD_Marca_ON_TEXTFIELD_SUBMIT');
                          logFirebaseEvent('Marca_validate_form');
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                        },
                        readOnly: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context).bodyMedium,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 32.0, 20.0, 12.0),
                        ),
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.0,
                                ),
                        textAlign: TextAlign.center,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        validator: _model.marcaControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(28.0, 16.0, 28.0, 0.0),
                      child: TextFormField(
                        controller: _model.digiteOCodigoController,
                        onFieldSubmitted: (_) async {
                          logFirebaseEvent(
                              'VALIDACAOD_digite_o_codigo_ON_TEXTFIELD_');
                          logFirebaseEvent('digite_o_codigo_validate_form');
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                        },
                        textCapitalization: TextCapitalization.characters,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Digite o código de autênticidade...',
                          labelStyle: FlutterFlowTheme.of(context).bodyMedium,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).grayIcon,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: Color(0xFF20222C),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 32.0, 20.0, 12.0),
                        ),
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 14.0,
                                ),
                        textAlign: TextAlign.start,
                        validator: _model.digiteOCodigoControllerValidator
                            .asValidator(context),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[A-Z0-9]'))
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 50.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'VALIDACAOD_PAGE_validarcodigo_ON_TAP');
                          logFirebaseEvent('validarcodigo_validate_form');
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          logFirebaseEvent('validarcodigo_simple_search');
                          await queryCdgGzoxRecordOnce()
                              .then(
                                (records) => _model
                                    .simpleSearchResults = TextSearch(
                                  records
                                      .map(
                                        (record) => TextSearchItem(
                                            record, [record.codigos!]),
                                      )
                                      .toList(),
                                )
                                    .search(_model.digiteOCodigoController.text)
                                    .map((r) => r.object)
                                    .take(1)
                                    .toList(),
                              )
                              .onError(
                                  (_, __) => _model.simpleSearchResults = [])
                              .whenComplete(() => setState(() {}));

                          if (_model.simpleSearchResults.length >= 1) {
                            logFirebaseEvent('validarcodigo_navigate_to');

                            context.pushNamed(
                              'validacaodocodigo2',
                              queryParameters: {
                                'codigo': serializeParam(
                                  _model.digiteOCodigoController.text,
                                  ParamType.String,
                                ),
                                'placa': serializeParam(
                                  widget.placa,
                                  ParamType.String,
                                ),
                                'marca': serializeParam(
                                  widget.marca,
                                  ParamType.String,
                                ),
                                'modelo': serializeParam(
                                  widget.modelo,
                                  ParamType.String,
                                ),
                                'quilometragem': serializeParam(
                                  widget.quilometragem,
                                  ParamType.String,
                                ),
                                'nome': serializeParam(
                                  widget.nome,
                                  ParamType.String,
                                ),
                                'email': serializeParam(
                                  widget.email,
                                  ParamType.String,
                                ),
                                'whatsapp': serializeParam(
                                  widget.whatsapp,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          } else {
                            logFirebaseEvent('validarcodigo_alert_dialog');
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Código não encontrado'),
                                  content:
                                      Text('Entre em contato com o suporte!'),
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
                            logFirebaseEvent('validarcodigo_navigate_back');
                            context.pop();
                          }
                        },
                        text: 'Validar o código',
                        options: FFButtonOptions(
                          width: 270.0,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
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
      ),
    );
  }
}
