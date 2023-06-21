import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SolicitarCodigoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Placa widget.
  TextEditingController? placaController;
  String? Function(BuildContext, String?)? placaControllerValidator;
  // State field(s) for Email_do_dono widget.
  TextEditingController? emailDoDonoController;
  String? Function(BuildContext, String?)? emailDoDonoControllerValidator;
  // Stores action output result for [Backend Call - API (Enviar mensagem)] action in Button widget.
  ApiCallResponse? apiResult991;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    placaController?.dispose();
    emailDoDonoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
