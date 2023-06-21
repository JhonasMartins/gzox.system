import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'validacaodocodigo2_model.dart';
export 'validacaodocodigo2_model.dart';

class Validacaodocodigo2Widget extends StatefulWidget {
  const Validacaodocodigo2Widget({
    Key? key,
    this.codigo,
    this.placa,
    this.marca,
    this.modelo,
    this.quilometragem,
    this.nome,
    this.email,
    this.whatsapp,
    this.tipo,
  }) : super(key: key);

  final String? codigo;
  final String? placa;
  final String? marca;
  final String? modelo;
  final String? quilometragem;
  final String? nome;
  final String? email;
  final String? whatsapp;
  final String? tipo;

  @override
  _Validacaodocodigo2WidgetState createState() =>
      _Validacaodocodigo2WidgetState();
}

class _Validacaodocodigo2WidgetState extends State<Validacaodocodigo2Widget> {
  late Validacaodocodigo2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Validacaodocodigo2Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'validacaodocodigo2'});
    _model.digiteOCodigoController ??=
        TextEditingController(text: widget.codigo);
    _model.marcaController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.marcaController?.text =
              'ESTE É UM CÓDIGO VÁLIDO! \nDESEJA INCLUÍ-LO EM UMA APLICAÇÃO.\n( UMA VEZ UTILIZADO NÃO PODERÁ SER UTILIZADO NOVAMENTE.)';
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
            'Código válido',
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
                          EdgeInsetsDirectional.fromSTEB(28.0, 16.0, 28.0, 0.0),
                      child: TextFormField(
                        controller: _model.digiteOCodigoController,
                        onFieldSubmitted: (_) async {
                          logFirebaseEvent(
                              'VALIDACAODOCODIGO2_digite_o_codigo_ON_TE');
                          logFirebaseEvent('digite_o_codigo_validate_form');
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                        },
                        textCapitalization: TextCapitalization.characters,
                        readOnly: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Código',
                          labelStyle: FlutterFlowTheme.of(context).bodyMedium,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).customColor1,
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
                          suffixIcon: Icon(
                            Icons.check,
                            color: FlutterFlowTheme.of(context).customColor1,
                            size: 22.0,
                          ),
                        ),
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 14.0,
                                ),
                        textAlign: TextAlign.start,
                        validator: _model.digiteOCodigoControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 16.0, 10.0, 0.0),
                      child: TextFormField(
                        controller: _model.marcaController,
                        onFieldSubmitted: (_) async {
                          logFirebaseEvent(
                              'VALIDACAODOCODIGO2_Marca_ON_TEXTFIELD_SU');
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 50.0),
                      child: StreamBuilder<List<ProdutoAplicadoRecord>>(
                        stream: queryProdutoAplicadoRecord(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitChasingDots(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 50.0,
                                ),
                              ),
                            );
                          }
                          List<ProdutoAplicadoRecord>
                              buttonProdutoAplicadoRecordList = snapshot.data!;
                          return FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'VALIDACAODOCODIGO2_SIM_QUERO_INCLUIR!_BT');
                              logFirebaseEvent('Button_simple_search');
                              setState(() {
                                _model.simpleSearchResults = TextSearch(
                                  buttonProdutoAplicadoRecordList
                                      .map(
                                        (record) => TextSearchItem(
                                            record, [record.codigo!]),
                                      )
                                      .toList(),
                                )
                                    .search(_model.digiteOCodigoController.text)
                                    .map((r) => r.object)
                                    .take(1)
                                    .toList();
                                ;
                              });
                              if (_model.simpleSearchResults.length >= 1) {
                                logFirebaseEvent('Button_alert_dialog');
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title:
                                          Text('Este código já foi utilizado.'),
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
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed('Servicos_realizados');
                              } else {
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  'Cadastrar_o_produto',
                                  queryParameters: {
                                    'placa': serializeParam(
                                      widget.placa,
                                      ParamType.String,
                                    ),
                                    'whatsapp': serializeParam(
                                      widget.whatsapp,
                                      ParamType.String,
                                    ),
                                    'email': serializeParam(
                                      widget.email,
                                      ParamType.String,
                                    ),
                                    'quilometragem': serializeParam(
                                      widget.quilometragem,
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
                                    'tipo': serializeParam(
                                      widget.tipo,
                                      ParamType.String,
                                    ),
                                    'user': serializeParam(
                                      currentUserReference,
                                      ParamType.DocumentReference,
                                    ),
                                    'nome': serializeParam(
                                      widget.nome,
                                      ParamType.String,
                                    ),
                                    'codigo': serializeParam(
                                      _model.digiteOCodigoController.text,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              }
                            },
                            text: 'Sim quero incluir!',
                            options: FFButtonOptions(
                              width: 270.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                            ),
                          );
                        },
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
