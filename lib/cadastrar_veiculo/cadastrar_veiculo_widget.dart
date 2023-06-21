import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'cadastrar_veiculo_model.dart';
export 'cadastrar_veiculo_model.dart';

class CadastrarVeiculoWidget extends StatefulWidget {
  const CadastrarVeiculoWidget({Key? key}) : super(key: key);

  @override
  _CadastrarVeiculoWidgetState createState() => _CadastrarVeiculoWidgetState();
}

class _CadastrarVeiculoWidgetState extends State<CadastrarVeiculoWidget> {
  late CadastrarVeiculoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CadastrarVeiculoModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Cadastrar_veiculo'});
    _model.placaController ??= TextEditingController();
    _model.marcaController ??= TextEditingController();
    _model.modeloController ??= TextEditingController();
    _model.quilometragemController ??= TextEditingController();
    _model.emailDoDonoController ??= TextEditingController();
    _model.nomeDoProprietarioController ??= TextEditingController();
    _model.whatsappDoDonoController ??= TextEditingController();
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
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          title: Text(
            'Cadastrar veículo',
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Form(
                    key: _model.formKey2,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              28.0, 16.0, 28.0, 0.0),
                          child: TextFormField(
                            controller: _model.placaController,
                            textCapitalization: TextCapitalization.characters,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Placa / Chassis / Registro / Prefixo',
                              labelStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).tertiary400,
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
                                  color: Color(0xFFFF0000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF0000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: Color(0xFF20222C),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 32.0, 20.0, 12.0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 14.0,
                                ),
                            textAlign: TextAlign.start,
                            validator: _model.placaControllerValidator
                                .asValidator(context),
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp('[A-Z0-9]'))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: StreamBuilder<List<VeiculoRecord>>(
                            stream: queryVeiculoRecord(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: SpinKitChasingDots(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              List<VeiculoRecord> buttonVeiculoRecordList =
                                  snapshot.data!;
                              return FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'CADASTRAR_VEICULO_CONSULTAR_BTN_ON_TAP');
                                  logFirebaseEvent('Button_validate_form');
                                  if (_model.formKey2.currentState == null ||
                                      !_model.formKey2.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  logFirebaseEvent('Button_simple_search');
                                  await queryVeiculoRecordOnce()
                                      .then(
                                        (records) => _model
                                            .simpleSearchResults = TextSearch(
                                          records
                                              .map(
                                                (record) => TextSearchItem(
                                                    record, [record.placa!]),
                                              )
                                              .toList(),
                                        )
                                            .search(_model.placaController.text)
                                            .map((r) => r.object)
                                            .take(1)
                                            .toList(),
                                      )
                                      .onError((_, __) =>
                                          _model.simpleSearchResults = [])
                                      .whenComplete(() => setState(() {}));

                                  if (_model.simpleSearchResults.length >= 1) {
                                    logFirebaseEvent('Button_alert_dialog');
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Veículo já cadastrado!'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed(
                                      'Detalhes_da_aplicacaoCopy',
                                      queryParameters: {
                                        'placa3': serializeParam(
                                          _model.placaController.text,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    logFirebaseEvent('Button_alert_dialog');
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title:
                                              Text('Veículo não encontrado!'),
                                          content: Text(
                                              'Pode prosseguir com o cadastro'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                },
                                text: 'Consultar',
                                options: FFButtonOptions(
                                  width: 130.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  elevation: 2.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Form(
                    key: _model.formKey1,
                    autovalidateMode: AutovalidateMode.always,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    _model.simpleSearchResults
                                        .where((e) => e != null)
                                        .toList()
                                        .length
                                        .toString(),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    28.0, 12.0, 28.0, 0.0),
                                child: FlutterFlowDropDown<String>(
                                  controller:
                                      _model.tipoDeVeiculoValueController ??=
                                          FormFieldController<String>(null),
                                  options: FFAppState().Veiculos,
                                  onChanged: (val) => setState(
                                      () => _model.tipoDeVeiculoValue = val),
                                  width: double.infinity,
                                  height: 60.0,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  hintText: 'Selecione o tipo de veículo...',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 15.0,
                                  ),
                                  fillColor: Color(0xFF20222C),
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).grayIcon,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 4.0, 12.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    28.0, 16.0, 28.0, 0.0),
                                child: TextFormField(
                                  controller: _model.marcaController,
                                  onFieldSubmitted: (_) async {
                                    logFirebaseEvent(
                                        'CADASTRAR_VEICULO_Marca_ON_TEXTFIELD_SUB');
                                    logFirebaseEvent('Marca_validate_form');
                                    if (_model.formKey1.currentState == null ||
                                        !_model.formKey1.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    if (_model.tipoDeVeiculoValue == null) {
                                      return;
                                    }
                                  },
                                  textCapitalization:
                                      TextCapitalization.characters,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Marca',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .customColor1,
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
                                        color: Color(0xFFFF0000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFF0000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF20222C),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 32.0, 20.0, 12.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                      ),
                                  textAlign: TextAlign.start,
                                  validator: _model.marcaControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    28.0, 16.0, 28.0, 0.0),
                                child: TextFormField(
                                  controller: _model.modeloController,
                                  textCapitalization:
                                      TextCapitalization.characters,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Modelo',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .customColor1,
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
                                        color: Color(0xFFFF0000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFF0000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF20222C),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 32.0, 20.0, 12.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                      ),
                                  textAlign: TextAlign.start,
                                  validator: _model.modeloControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    28.0, 16.0, 28.0, 0.0),
                                child: TextFormField(
                                  controller: _model.quilometragemController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Quilometragem atual',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .customColor1,
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
                                        color: Color(0xFFFF0000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFF0000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF20222C),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 32.0, 20.0, 12.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                      ),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.number,
                                  validator: _model
                                      .quilometragemControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Text(
                                  'Dados do proprietário',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 18.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    28.0, 10.0, 28.0, 0.0),
                                child: TextFormField(
                                  controller: _model.emailDoDonoController,
                                  textCapitalization:
                                      TextCapitalization.characters,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Email do proprietário',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .customColor1,
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
                                        color: Color(0xFFFF0000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFF0000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF20222C),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 32.0, 20.0, 12.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                      ),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.emailAddress,
                                  validator: _model
                                      .emailDoDonoControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    28.0, 10.0, 28.0, 0.0),
                                child: TextFormField(
                                  controller:
                                      _model.nomeDoProprietarioController,
                                  textCapitalization:
                                      TextCapitalization.characters,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Nome do proprietário',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .customColor1,
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
                                        color: Color(0xFFFF0000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFF0000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF20222C),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 32.0, 20.0, 12.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                      ),
                                  textAlign: TextAlign.start,
                                  validator: _model
                                      .nomeDoProprietarioControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      28.0, 10.0, 28.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.whatsappDoDonoController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Whatsapp do proprietário',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 14.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .customColor1,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFF20222C),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 32.0, 20.0, 12.0),
                                      suffixIcon: FaIcon(
                                        FontAwesomeIcons.whatsapp,
                                        color: Color(0xFF39D262),
                                        size: 22.0,
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 14.0,
                                        ),
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.phone,
                                    validator: _model
                                        .whatsappDoDonoControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Text(
                                  '( Não esqueça o DDD.  Exp: 43900000000 )',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              if (_model.placaController.text != null &&
                                  _model.placaController.text != '')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 50.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'CADASTRAR_VEICULO_CADASTRAR_PRODUTO_BTN_');
                                      logFirebaseEvent('Button_validate_form');
                                      if (_model.formKey1.currentState ==
                                              null ||
                                          !_model.formKey1.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      if (_model.tipoDeVeiculoValue == null) {
                                        return;
                                      }
                                      logFirebaseEvent('Button_navigate_to');

                                      context.pushNamed(
                                        'validacaod',
                                        queryParameters: {
                                          'placa': serializeParam(
                                            _model.placaController.text,
                                            ParamType.String,
                                          ),
                                          'whatsapp': serializeParam(
                                            _model
                                                .whatsappDoDonoController.text,
                                            ParamType.String,
                                          ),
                                          'email': serializeParam(
                                            _model.emailDoDonoController.text,
                                            ParamType.String,
                                          ),
                                          'quilometragem': serializeParam(
                                            _model.quilometragemController.text,
                                            ParamType.String,
                                          ),
                                          'marca': serializeParam(
                                            _model.marcaController.text,
                                            ParamType.String,
                                          ),
                                          'modelo': serializeParam(
                                            _model.modeloController.text,
                                            ParamType.String,
                                          ),
                                          'nome': serializeParam(
                                            _model.nomeDoProprietarioController
                                                .text,
                                            ParamType.String,
                                          ),
                                          'tipo': serializeParam(
                                            _model.tipoDeVeiculoValue,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    text: 'Cadastrar  produto',
                                    options: FFButtonOptions(
                                      width: 270.0,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                  ),
                                ),
                            ],
                          ),
                        ],
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
