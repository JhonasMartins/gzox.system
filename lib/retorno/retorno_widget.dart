import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/permissions_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'retorno_model.dart';
export 'retorno_model.dart';

class RetornoWidget extends StatefulWidget {
  const RetornoWidget({Key? key}) : super(key: key);

  @override
  _RetornoWidgetState createState() => _RetornoWidgetState();
}

class _RetornoWidgetState extends State<RetornoWidget> {
  late RetornoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RetornoModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'retorno'});
    _model.placaController ??= TextEditingController();
    _model.codigoDoProdutoController ??= TextEditingController();
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
            'Cadastrar produto',
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
            autovalidateMode: AutovalidateMode.disabled,
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
                            28.0, 22.0, 28.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _model.placaController,
                                onFieldSubmitted: (_) async {
                                  logFirebaseEvent(
                                      'RETORNO_PAGE_Placa_ON_TEXTFIELD_SUBMIT');
                                  logFirebaseEvent('Placa_alert_dialog');
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('ATENÇÃO!!'),
                                        content: Text(
                                            'Está página é  especifica para veículos que já estão registrados na plataforma. Caso seja a primeira aplicação no \"GZOX SYSTEM\"  volte para página  \"CADASTRAR VEÍCULO\".'),
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
                                },
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Placa / Chassis ',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF4D00),
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
                                validator: _model.placaControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            28.0, 16.0, 28.0, 0.0),
                        child: TextFormField(
                          controller: _model.codigoDoProdutoController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Código do produto',
                            labelStyle: FlutterFlowTheme.of(context).bodyMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFF4D00),
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
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Poppins',
                                fontSize: 14.0,
                              ),
                          textAlign: TextAlign.start,
                          validator: _model.codigoDoProdutoControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            28.0, 10.0, 28.0, 0.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF20222C),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0xFF141B1C),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).grayIcon,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 16.0, 16.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          dateTimeFormat(
                                            'yMd',
                                            _model.datePicked,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Colors.white,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'RETORNO_PAGE_chatGuest_ON_TAP');
                                    logFirebaseEvent(
                                        'chatGuest_date_time_picker');
                                    if (kIsWeb) {
                                      final _datePickedDate =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: getCurrentTimestamp,
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime(2050),
                                      );

                                      if (_datePickedDate != null) {
                                        setState(() {
                                          _model.datePicked = DateTime(
                                            _datePickedDate.year,
                                            _datePickedDate.month,
                                            _datePickedDate.day,
                                          );
                                        });
                                      }
                                    } else {
                                      await DatePicker.showDatePicker(
                                        context,
                                        showTitleActions: true,
                                        onConfirm: (date) {
                                          setState(() {
                                            _model.datePicked = date;
                                          });
                                        },
                                        currentTime: getCurrentTimestamp,
                                        minTime: DateTime(0, 0, 0),
                                        locale: LocaleType.values.firstWhere(
                                          (l) =>
                                              l.name ==
                                              FFLocalizations.of(context)
                                                  .languageCode,
                                          orElse: () => LocaleType.en,
                                        ),
                                      );
                                    }
                                  },
                                  text: 'Data',
                                  icon: FaIcon(
                                    FontAwesomeIcons.calendarCheck,
                                  ),
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFFFF4D00),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            28.0, 12.0, 28.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.produtoPrincipalValueController ??=
                              FormFieldController<String>(null),
                          options: FFAppState().Produtos,
                          onChanged: (val) => setState(
                              () => _model.produtoPrincipalValue = val),
                          width: double.infinity,
                          height: 60.0,
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          hintText: 'Selecione o produto...',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 15.0,
                          ),
                          fillColor: Color(0xFF20222C),
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).grayIcon,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              24.0, 4.0, 12.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Text(
                          'Produtos secundários',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 18.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                        child: FlutterFlowChoiceChips(
                          options: FFAppState()
                              .Secundarios
                              .map((label) => ChipData(label))
                              .toList(),
                          onChanged: (val) => setState(
                              () => _model.produtosSecundariosValues = val),
                          selectedChipStyle: ChipStyle(
                            backgroundColor: Color(0xFFFF4D00),
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                            iconColor: Color(0xFF20222C),
                            iconSize: 18.0,
                            elevation: 4.0,
                          ),
                          unselectedChipStyle: ChipStyle(
                            backgroundColor: Color(0xFF20222C),
                            textStyle:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                            iconColor:
                                FlutterFlowTheme.of(context).primaryBtnText,
                            iconSize: 18.0,
                            elevation: 4.0,
                          ),
                          chipSpacing: 20.0,
                          rowSpacing: 12.0,
                          multiselect: true,
                          initialized: _model.produtosSecundariosValues != null,
                          alignment: WrapAlignment.center,
                          controller:
                              _model.produtosSecundariosValueController ??=
                                  FormFieldController<List<String>>(
                            [],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Text(
                          'Adicione uma foto do veículo',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 18.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Container(
                          width: 320.0,
                          height: 266.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF20222C),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'RETORNO_PAGE_Foto_da_aplicacao_ON_TAP');
                                        logFirebaseEvent(
                                            'Foto_da_aplicacao_request_permissions');
                                        await requestPermission(
                                            cameraPermission);
                                        logFirebaseEvent(
                                            'Foto_da_aplicacao_upload_media_to_fireba');
                                        final selectedMedia =
                                            await selectMediaWithSourceBottomSheet(
                                          context: context,
                                          allowPhoto: true,
                                        );
                                        if (selectedMedia != null &&
                                            selectedMedia.every((m) =>
                                                validateFileFormat(
                                                    m.storagePath, context))) {
                                          setState(() =>
                                              _model.isDataUploading = true);
                                          var selectedUploadedFiles =
                                              <FFUploadedFile>[];
                                          var downloadUrls = <String>[];
                                          try {
                                            showUploadMessage(
                                              context,
                                              'Uploading file...',
                                              showLoading: true,
                                            );
                                            selectedUploadedFiles =
                                                selectedMedia
                                                    .map((m) => FFUploadedFile(
                                                          name: m.storagePath
                                                              .split('/')
                                                              .last,
                                                          bytes: m.bytes,
                                                          height: m.dimensions
                                                              ?.height,
                                                          width: m.dimensions
                                                              ?.width,
                                                          blurHash: m.blurHash,
                                                        ))
                                                    .toList();

                                            downloadUrls = (await Future.wait(
                                              selectedMedia.map(
                                                (m) async => await uploadData(
                                                    m.storagePath, m.bytes),
                                              ),
                                            ))
                                                .where((u) => u != null)
                                                .map((u) => u!)
                                                .toList();
                                          } finally {
                                            ScaffoldMessenger.of(context)
                                                .hideCurrentSnackBar();
                                            _model.isDataUploading = false;
                                          }
                                          if (selectedUploadedFiles.length ==
                                                  selectedMedia.length &&
                                              downloadUrls.length ==
                                                  selectedMedia.length) {
                                            setState(() {
                                              _model.uploadedLocalFile =
                                                  selectedUploadedFiles.first;
                                              _model.uploadedFileUrl =
                                                  downloadUrls.first;
                                            });
                                            showUploadMessage(
                                                context, 'Success!');
                                          } else {
                                            setState(() {});
                                            showUploadMessage(context,
                                                'Failed to upload data');
                                            return;
                                          }
                                        }
                                      },
                                      text: 'Adicionar foto',
                                      icon: Icon(
                                        Icons.photo_camera_outlined,
                                        size: 15.0,
                                      ),
                                      options: FFButtonOptions(
                                        width: 200.0,
                                        height: 50.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFFFF4D00),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        _model.uploadedFileUrl,
                                        width: 300.0,
                                        height: 190.0,
                                        fit: BoxFit.cover,
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 30.0),
                    child: StreamBuilder<List<VeiculoRecord>>(
                      stream: queryVeiculoRecord(
                        queryBuilder: (veiculoRecord) => veiculoRecord.where(
                            'Placa',
                            isEqualTo: _model.placaController.text),
                        singleRecord: true,
                      ),
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
                        List<VeiculoRecord> buttonVeiculoRecordList =
                            snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final buttonVeiculoRecord =
                            buttonVeiculoRecordList.isNotEmpty
                                ? buttonVeiculoRecordList.first
                                : null;
                        return FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'RETORNO_PAGE_REGISTRAR_BTN_ON_TAP');
                            logFirebaseEvent('Button_backend_call');

                            final produtoAplicadoCreateData =
                                createProdutoAplicadoRecordData(
                              placa: _model.placaController.text,
                              codigo: _model.codigoDoProdutoController.text,
                              aplicador: currentUserDisplayName,
                              foto: _model.uploadedFileUrl,
                              produto: _model.produtoPrincipalValue,
                            );
                            await ProdutoAplicadoRecord.collection
                                .doc()
                                .set(produtoAplicadoCreateData);
                            // Xano
                            logFirebaseEvent('Button_Xano');
                            await XanoCall.call(
                              whatsapp: buttonVeiculoRecord!.whatsappDoDonoGzox,
                              email: buttonVeiculoRecord!.emailDoDonoGzox,
                              nome: buttonVeiculoRecord!.nomeDoDonoGzox,
                            );
                            // Boas vindas
                            logFirebaseEvent('Button_Boasvindas');
                            await EnviarMensagemCall.call(
                              nome:
                                  'Olá, ${buttonVeiculoRecord!.nomeDoDonoGzox}',
                              whatsapp:
                                  '55${buttonVeiculoRecord!.whatsappDoDonoGzox}',
                              mensagem:
                                  'É com grande satisfação que recebemos o registro  do seu veículo em nosso banco de dados.',
                            );
                            // Informamos que
                            logFirebaseEvent('Button_Informamosque');
                            await EnviarMensagemCall.call(
                              nome: 'Informamos que seu veículo',
                              whatsapp:
                                  '55${buttonVeiculoRecord!.whatsappDoDonoGzox}',
                            );
                            // Placa do veículo
                            logFirebaseEvent('Button_Placadoveículo');
                            await EnviarMensagemCall.call(
                              nome:
                                  'Placa do veículo: ${buttonVeiculoRecord!.placa}',
                              whatsapp:
                                  '55${buttonVeiculoRecord!.whatsappDoDonoGzox}',
                            );
                            // Marca
                            logFirebaseEvent('Button_Marca');
                            await EnviarMensagemCall.call(
                              nome: 'Marca: ${buttonVeiculoRecord!.marca}',
                              whatsapp:
                                  '55${buttonVeiculoRecord!.whatsappDoDonoGzox}',
                            );
                            // Modelo
                            logFirebaseEvent('Button_Modelo');
                            await EnviarMensagemCall.call(
                              nome: 'Modelo: ${buttonVeiculoRecord!.modelo}',
                              whatsapp:
                                  '55${buttonVeiculoRecord!.whatsappDoDonoGzox}',
                            );
                            // Produto aplicado
                            logFirebaseEvent('Button_Produtoaplicado');
                            await EnviarMensagemCall.call(
                              nome:
                                  'Recebeu nosso sistema de proteção de pintura ${_model.produtoPrincipalValue}  aplicado por nosso credenciado',
                              whatsapp:
                                  '55${buttonVeiculoRecord!.whatsappDoDonoGzox}',
                            );
                            logFirebaseEvent('Button_backend_call');
                            await EnviarMensagemCall.call(
                              nome:
                                  ' A GZOX é a marca mais importante de COATINGS de proteção de pintura da Ásia. Ela e reconhecida internacionalmente pela qualidade dos seus produtos. Fabricada pela SOFT99 Corporation no Japão, a GZOX reúne o que há de mais moderno em qualidade e tecnologia.  Para visualizar as informações no GZOX SYSTEM, baixe o APP conforme seu sistema operacional: https://gzox.com.br/gzox-system/   Recomendamos que faça sempre as manutenções na rede de aplicadores credenciados e que não utilize produtos agressivos para lavagens. Dessa forma, você manterá o coating aplicado sobre o seu veículo sempre com alto nível de repelência.  Em caso de dúvidas procure nossos aplicadores credenciados ou entre em contato conosco através do email: contato@soft99brasil.com.br  Att. Equipe GZOX BRASIL',
                              whatsapp:
                                  '55${buttonVeiculoRecord!.whatsappDoDonoGzox}',
                            );
                            // Foto do véiculo
                            logFirebaseEvent('Button_Fotodovéiculo');
                            await EnviarFotoCall.call(
                              whatsapp:
                                  '55${buttonVeiculoRecord!.whatsappDoDonoGzox}',
                              imagem: _model.uploadedFileUrl,
                            );
                            // Contato do aplicador
                            logFirebaseEvent('Button_Contatodoaplicador');
                            await ContatoCall.call(
                              whatsappParaEnviar:
                                  '55${buttonVeiculoRecord!.whatsappDoDonoGzox}',
                              nomeDoContato: currentUserDisplayName,
                              whatsappDoAplicador: '55${currentPhoneNumber}',
                            );
                            logFirebaseEvent('Button_backend_call');
                            await BubbleCall.call(
                              nome: buttonVeiculoRecord!.nomeDoDonoGzox,
                              email: buttonVeiculoRecord!.emailDoDonoGzox,
                              whatsapp: buttonVeiculoRecord!.whatsappDoDonoGzox,
                              placa: buttonVeiculoRecord!.placa,
                              marca: buttonVeiculoRecord!.marca,
                              modelo: buttonVeiculoRecord!.modelo,
                              whatsappDoDono: currentPhoneNumber,
                              emailDoDono: currentUserEmail,
                              produto: _model.produtoPrincipalValue,
                            );
                            logFirebaseEvent('Button_navigate_to');

                            context.pushNamed('sucesso');
                          },
                          text: 'Registrar',
                          icon: Icon(
                            Icons.double_arrow,
                            size: 15.0,
                          ),
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
    );
  }
}
