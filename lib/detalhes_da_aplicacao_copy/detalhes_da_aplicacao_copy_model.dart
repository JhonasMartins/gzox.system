import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class DetalhesDaAplicacaoCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Placa widget.
  TextEditingController? placaController;
  String? Function(BuildContext, String?)? placaControllerValidator;
  // State field(s) for Nome widget.
  TextEditingController? nomeController1;
  String? Function(BuildContext, String?)? nomeController1Validator;
  // State field(s) for Nome widget.
  TextEditingController? nomeController2;
  String? Function(BuildContext, String?)? nomeController2Validator;
  // State field(s) for Nome widget.
  TextEditingController? nomeController3;
  String? Function(BuildContext, String?)? nomeController3Validator;
  // State field(s) for Nome widget.
  TextEditingController? nomeController4;
  String? Function(BuildContext, String?)? nomeController4Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    placaController?.dispose();
    nomeController1?.dispose();
    nomeController2?.dispose();
    nomeController3?.dispose();
    nomeController4?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
