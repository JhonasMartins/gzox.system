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

class Validacaodocodigo2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for digite_o_codigo widget.
  TextEditingController? digiteOCodigoController;
  String? Function(BuildContext, String?)? digiteOCodigoControllerValidator;
  // State field(s) for Marca widget.
  TextEditingController? marcaController;
  String? Function(BuildContext, String?)? marcaControllerValidator;
  List<ProdutoAplicadoRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    digiteOCodigoController?.dispose();
    marcaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
