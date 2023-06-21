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

class CadastrarVeiculoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for Placa widget.
  TextEditingController? placaController;
  String? Function(BuildContext, String?)? placaControllerValidator;
  String? _placaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.length < 7) {
      return 'Digite apenas em letras maiúsculas';
    }

    return null;
  }

  List<VeiculoRecord> simpleSearchResults = [];
  // State field(s) for tipo_de-veiculo widget.
  String? tipoDeVeiculoValue;
  FormFieldController<String>? tipoDeVeiculoValueController;
  // State field(s) for Marca widget.
  TextEditingController? marcaController;
  String? Function(BuildContext, String?)? marcaControllerValidator;
  String? _marcaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for Modelo widget.
  TextEditingController? modeloController;
  String? Function(BuildContext, String?)? modeloControllerValidator;
  String? _modeloControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for Quilometragem widget.
  TextEditingController? quilometragemController;
  String? Function(BuildContext, String?)? quilometragemControllerValidator;
  String? _quilometragemControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for Email_do_dono widget.
  TextEditingController? emailDoDonoController;
  String? Function(BuildContext, String?)? emailDoDonoControllerValidator;
  String? _emailDoDonoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for Nome_do_proprietario widget.
  TextEditingController? nomeDoProprietarioController;
  String? Function(BuildContext, String?)?
      nomeDoProprietarioControllerValidator;
  String? _nomeDoProprietarioControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for Whatsapp_do_dono widget.
  TextEditingController? whatsappDoDonoController;
  String? Function(BuildContext, String?)? whatsappDoDonoControllerValidator;
  String? _whatsappDoDonoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    placaControllerValidator = _placaControllerValidator;
    marcaControllerValidator = _marcaControllerValidator;
    modeloControllerValidator = _modeloControllerValidator;
    quilometragemControllerValidator = _quilometragemControllerValidator;
    emailDoDonoControllerValidator = _emailDoDonoControllerValidator;
    nomeDoProprietarioControllerValidator =
        _nomeDoProprietarioControllerValidator;
    whatsappDoDonoControllerValidator = _whatsappDoDonoControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    placaController?.dispose();
    marcaController?.dispose();
    modeloController?.dispose();
    quilometragemController?.dispose();
    emailDoDonoController?.dispose();
    nomeDoProprietarioController?.dispose();
    whatsappDoDonoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
