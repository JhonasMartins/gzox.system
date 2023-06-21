import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AlterarDadosDoProprietarioCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Nome widget.
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Whatsapp widget.
  TextEditingController? whatsappController;
  String? Function(BuildContext, String?)? whatsappControllerValidator;
  // State field(s) for Marca widget.
  TextEditingController? marcaController;
  String? Function(BuildContext, String?)? marcaControllerValidator;
  // State field(s) for Modelo widget.
  TextEditingController? modeloController;
  String? Function(BuildContext, String?)? modeloControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nomeController?.dispose();
    emailController?.dispose();
    whatsappController?.dispose();
    marcaController?.dispose();
    modeloController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
