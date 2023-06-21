import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cadastrar_o_produto_copy_model.dart';
export 'cadastrar_o_produto_copy_model.dart';

class CadastrarOProdutoCopyWidget extends StatefulWidget {
  const CadastrarOProdutoCopyWidget({
    Key? key,
    this.document,
  }) : super(key: key);

  final VeiculoRecord? document;

  @override
  _CadastrarOProdutoCopyWidgetState createState() =>
      _CadastrarOProdutoCopyWidgetState();
}

class _CadastrarOProdutoCopyWidgetState
    extends State<CadastrarOProdutoCopyWidget> {
  late CadastrarOProdutoCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CadastrarOProdutoCopyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Cadastrar_o_produtoCopy'});
    _model.codigoDoProdutoController ??=
        TextEditingController(text: widget.document!.placa);
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
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('CADASTRAR_O_PRODUTO_COPY_Icon_csytj6y7_O');
              logFirebaseEvent('Icon_navigate_back');
              context.pop();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: FlutterFlowTheme.of(context).primaryBtnText,
              size: 24.0,
            ),
          ),
          title: Text(
            'Nova aplicação',
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
                            28.0, 16.0, 28.0, 0.0),
                        child: TextFormField(
                          controller: _model.codigoDoProdutoController,
                          readOnly: true,
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
                                        'CADASTRAR_O_PRODUTO_COPY_chatGuest_ON_TA');
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            28.0, 12.0, 28.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.lightValueController ??=
                              FormFieldController<String>(null),
                          options: ['Light Coat', 'Não'],
                          onChanged: (val) =>
                              setState(() => _model.lightValue = val),
                          width: double.infinity,
                          height: 60.0,
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          hintText: 'Aplicou o produto para faróis?',
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            28.0, 12.0, 28.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.wheelValueController ??=
                              FormFieldController<String>(null),
                          options: ['Wheel & Chrome Coat', 'Não'],
                          onChanged: (val) =>
                              setState(() => _model.wheelValue = val),
                          width: double.infinity,
                          height: 60.0,
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          hintText: 'Aplicou o produto para rodas?',
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            28.0, 12.0, 28.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.plasticValueController ??=
                              FormFieldController<String>(null),
                          options: ['Nano Plastic', 'Não'],
                          onChanged: (val) =>
                              setState(() => _model.plasticValue = val),
                          width: double.infinity,
                          height: 60.0,
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          hintText: 'Aplicou o produto para plásticos?',
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            28.0, 12.0, 28.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.p5ValueController ??=
                              FormFieldController<String>(null),
                          options: ['Prospec 45', 'Não'],
                          onChanged: (val) =>
                              setState(() => _model.p5Value = val),
                          width: double.infinity,
                          height: 60.0,
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          hintText: 'Aplicou o produto para os vidros?',
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            28.0, 12.0, 28.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.couroValueController ??=
                              FormFieldController<String>(null),
                          options: ['Prospec Couro', 'Não'],
                          onChanged: (val) =>
                              setState(() => _model.couroValue = val),
                          width: double.infinity,
                          height: 60.0,
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          hintText: 'Aplicou o produto para couro?',
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            28.0, 12.0, 28.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.tireValueController ??=
                              FormFieldController<String>(null),
                          options: ['Tire Coat', 'Não'],
                          onChanged: (val) =>
                              setState(() => _model.tireValue = val),
                          width: double.infinity,
                          height: 60.0,
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          hintText: 'Aplicou o produto para pneu?',
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
                                            'CADASTRAR_O_PRODUTO_COPY_Foto_da_aplicac');
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
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'CADASTRAR_O_PRODUTO_COPY_REGISTRAR_BTN_O');
                        logFirebaseEvent('Button_backend_call');

                        final produtoAplicadoCreateData =
                            createProdutoAplicadoRecordData(
                          placa: widget.document!.placa,
                          codigo: _model.codigoDoProdutoController.text,
                          produto: _model.produtoPrincipalValue,
                          aplicador: currentUserDisplayName,
                          foto: _model.uploadedFileUrl,
                          secProspec45: _model.p5Value,
                          secNanoPlastic: _model.plasticValue,
                          secLightCoat: _model.lightValue,
                          secWheelChromeCoat: _model.wheelValue,
                          secTireCoat: _model.tireValue,
                          secProspecCouro: _model.couroValue,
                        );
                        await ProdutoAplicadoRecord.collection
                            .doc()
                            .set(produtoAplicadoCreateData);
                        // Boas vindas
                        logFirebaseEvent('Button_Boasvindas');
                        await EnviarMensagemCall.call(
                          nome: 'Olá, ${widget.document!.nomeDoDonoGzox}',
                          whatsapp: widget.document!.whatsappDoDonoGzox,
                        );
                        // sobre a aplicacao
                        logFirebaseEvent('Button_sobreaaplicacao');
                        await EnviarMensagemCall.call(
                          whatsapp: widget.document!.whatsappDoDonoGzox,
                          nome:
                              'Seu veículo, placa: ${widget.document!.placa}, Marca: ${widget.document!.marca}, modelo: ${widget.document!.modelo}, recebeu o nosso sistema de proteção de pintura: ${_model.produtoPrincipalValue}, aplicado pelo profissional credenciado:${currentUserDisplayName}',
                        );
                        // Sobre a gzox
                        logFirebaseEvent('Button_Sobreagzox');
                        await EnviarMensagemCall.call(
                          nome:
                              'A GZOX é marca mais importante de coatings de proteção de pintura da Asia.  Ela é reconhecida internacionalmente pela qualidade dos seus produtos. Fabricado pela SOFT99 Corporation no Japão, a GZOX reúne o que há de mais moderno em qualidade e tecnologia.',
                          whatsapp: widget.document!.whatsappDoDonoGzox,
                        );
                        // download
                        logFirebaseEvent('Button_download');
                        await EnviarMensagemCall.call(
                          nome:
                              'Para visualizar as informações e acompanhar o seu veículo baixe nosso APP:  https://gzox.com.br/index.php/gzox-system/',
                          whatsapp: widget.document!.whatsappDoDonoGzox,
                        );
                        logFirebaseEvent('Button_backend_call');
                        await EnviarMensagemCall.call(
                          nome:
                              'Recomendamos que faça sempre as manutenções na rede de aplicadores credenciados, que podem ser localizados dentro do nosso APP.   Não utilize produtos agressivos para as lavagens. Dessa forma você manterá a proteção sempre com um bom nível de repelência.   Em caso de dúvida entre em contato com seu aplicador: ',
                          whatsapp: widget.document!.whatsappDoDonoGzox,
                        );
                        // Contato do aplicador
                        logFirebaseEvent('Button_Contatodoaplicador');
                        await ContatoCall.call(
                          whatsappParaEnviar:
                              widget.document!.whatsappDoDonoGzox,
                          nomeDoContato: currentPhoneNumber,
                          whatsappDoAplicador: '55${currentPhoneNumber}',
                        );
                        // Foto do véiculo
                        logFirebaseEvent('Button_Fotodovéiculo');
                        await EnviarFotoCall.call(
                          whatsapp: widget.document!.whatsappDoDonoGzox,
                          imagem: _model.uploadedFileUrl,
                        );
                        logFirebaseEvent('Button_backend_call');
                        await EnviarMensagemCall.call(
                          nome:
                              'Olá, ${currentUserDisplayName} informamos que foi registrado com sucesso no GZOX SYSTEM o veículo  placa: ${widget.document!.placa}',
                          whatsapp: widget.document!.whatsappDoDonoGzox,
                        );
                        logFirebaseEvent('Button_backend_call');
                        await GzoxenvioCall.call(
                          email: widget.document!.emailDoDonoGzox,
                          whastapp: widget.document!.whatsappDoDonoGzox,
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
