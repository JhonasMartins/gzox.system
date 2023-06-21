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

class Validacaodecodigo1Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Marca widget.
  TextEditingController? marcaController1;
  String? Function(BuildContext, String?)? marcaController1Validator;
  // State field(s) for digite_o_codigo widget.
  TextEditingController? digiteOCodigoController;
  String? Function(BuildContext, String?)? digiteOCodigoControllerValidator;
  String? _digiteOCodigoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.length < 8) {
      return 'Digite apenas em letras maiúsculas';
    }
    if (val.length > 8) {
      return 'O código tem apenas 8 digitos.';
    }

    return null;
  }

  List<CdgGzoxRecord> simpleSearchResults = [];
  // State field(s) for Marca widget.
  TextEditingController? marcaController2;
  String? Function(BuildContext, String?)? marcaController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    digiteOCodigoControllerValidator = _digiteOCodigoControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    marcaController1?.dispose();
    digiteOCodigoController?.dispose();
    marcaController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
