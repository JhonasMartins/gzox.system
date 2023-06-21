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
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'cadastrar_o_produto_model.dart';
export 'cadastrar_o_produto_model.dart';

class CadastrarOProdutoWidget extends StatefulWidget {
  const CadastrarOProdutoWidget({
    Key? key,
    this.placa,
    this.whatsapp,
    this.email,
    this.quilometragem,
    this.marca,
    this.modelo,
    this.tipo,
    this.user,
    this.nome,
    this.codigo,
  }) : super(key: key);

  final String? placa;
  final String? whatsapp;
  final String? email;
  final String? quilometragem;
  final String? marca;
  final String? modelo;
  final String? tipo;
  final DocumentReference? user;
  final String? nome;
  final String? codigo;

  @override
  _CadastrarOProdutoWidgetState createState() =>
      _CadastrarOProdutoWidgetState();
}

class _CadastrarOProdutoWidgetState extends State<CadastrarOProdutoWidget> {
  late CadastrarOProdutoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CadastrarOProdutoModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Cadastrar_o_produto'});
    _model.codigoDoProdutoController ??=
        TextEditingController(text: widget.codigo);
    _model.dataDaAplicacaoController ??= TextEditingController();
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
              logFirebaseEvent('CADASTRAR_O_PRODUTO_Icon_wnmwyl6a_ON_TAP');
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
                            28.0, 16.0, 28.0, 0.0),
                        child: TextFormField(
                          controller: _model.codigoDoProdutoController,
                          textCapitalization: TextCapitalization.sentences,
                          readOnly: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Código do produto',
                            labelStyle: FlutterFlowTheme.of(context).bodyMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).customColor1,
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
                          keyboardType: TextInputType.name,
                          validator: _model.codigoDoProdutoControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            28.0, 16.0, 28.0, 0.0),
                        child: TextFormField(
                          controller: _model.dataDaAplicacaoController,
                          textCapitalization: TextCapitalization.characters,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Data da aplicação',
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
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Poppins',
                                fontSize: 14.0,
                              ),
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.datetime,
                          validator: _model.dataDaAplicacaoControllerValidator
                              .asValidator(context),
                          inputFormatters: [_model.dataDaAplicacaoMask],
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
                                            'CADASTRAR_O_PRODUTO_Foto_da_aplicacao_ON');
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
                  if (_model.produtoPrincipalValue != null &&
                      _model.produtoPrincipalValue != '')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 30.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'CADASTRAR_O_PRODUTO_REGISTRAR_BTN_ON_TAP');
                          logFirebaseEvent('Button_backend_call');

                          final produtoAplicadoCreateData =
                              createProdutoAplicadoRecordData(
                            placa: widget.placa,
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
                            dtAplicacao: _model.dataDaAplicacaoController.text,
                          );
                          await ProdutoAplicadoRecord.collection
                              .doc()
                              .set(produtoAplicadoCreateData);
                          logFirebaseEvent('Button_backend_call');

                          final veiculoCreateData = createVeiculoRecordData(
                            marca: widget.marca,
                            modelo: widget.modelo,
                            quilometragem: widget.quilometragem,
                            emailDoDonoGzox: widget.email,
                            nomeDoDonoGzox: widget.nome,
                            whatsappDoDonoGzox: widget.whatsapp,
                            placa: widget.placa,
                            user: widget.user,
                            tipoDoVeiculo: widget.tipo,
                          );
                          await VeiculoRecord.collection
                              .doc()
                              .set(veiculoCreateData);
                          // Boas vindas
                          logFirebaseEvent('Button_Boasvindas');
                          await EnviarMensagemCall.call(
                            nome: 'Olá, ${widget.nome}',
                            whatsapp: '55${widget.whatsapp}',
                          );
                          // sobre a aplicacao
                          logFirebaseEvent('Button_sobreaaplicacao');
                          await EnviarMensagemCall.call(
                            whatsapp: '55${widget.whatsapp}',
                            nome:
                                'Seu veículo, placa: ${widget.placa}, Marca: ${widget.marca}, modelo: ${widget.modelo}, recebeu o nosso sistema de proteção de pintura: ${_model.produtoPrincipalValue}, aplicado pelo profissional credenciado:${currentUserDisplayName}',
                          );
                          // Sobre a gzox
                          logFirebaseEvent('Button_Sobreagzox');
                          await EnviarMensagemCall.call(
                            nome:
                                ' A GZOX é marca mais importante de coatings de proteção de pintura da Asia.  Ela é reconhecida internacionalmente pela qualidade dos seus produtos. Fabricado pela SOFT99 Corporation no Japão, a GZOX reúne o que há de mais moderno em qualidade e tecnologia.',
                            whatsapp: '55${widget.whatsapp}',
                          );
                          // download
                          logFirebaseEvent('Button_download');
                          await EnviarMensagemCall.call(
                            nome:
                                'Para visualizar as informações e acompanhar o seu veículo baixe nosso APP:  https://gzox.com.br/index.php/gzox-system/',
                            whatsapp: '55${widget.whatsapp}',
                          );
                          logFirebaseEvent('Button_backend_call');
                          await EnviarMensagemCall.call(
                            nome:
                                'Recomendamos que faça sempre as manutenções na rede de aplicadores credenciados, que podem ser localizados dentro do nosso APP.   Não utilize produtos agressivos para as lavagens. Dessa forma você manterá a proteção sempre com um bom nível de repelência.   Em caso de dúvida entre em contato com seu aplicador: ',
                            whatsapp: '55${widget.whatsapp}',
                          );
                          // Contato do aplicador
                          logFirebaseEvent('Button_Contatodoaplicador');
                          await ContatoCall.call(
                            whatsappParaEnviar: '55${widget.whatsapp}',
                            nomeDoContato: currentUserDisplayName,
                            whatsappDoAplicador: '55${currentPhoneNumber}',
                          );
                          // Foto do véiculo
                          logFirebaseEvent('Button_Fotodovéiculo');
                          await EnviarFotoCall.call(
                            whatsapp: '55${widget.whatsapp}',
                            imagem: _model.uploadedFileUrl,
                          );
                          logFirebaseEvent('Button_backend_call');
                          await EnviarMensagemCall.call(
                            nome:
                                'Olá, ${currentUserDisplayName} informamos que foi registrado com sucesso no GZOX SYSTEM o veículo  placa: ${widget.placa}',
                            whatsapp: '55${currentPhoneNumber}',
                          );
                          logFirebaseEvent('Button_backend_call');
                          await GzoxenvioCall.call(
                            email: widget.email,
                            whastapp: widget.whatsapp,
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
