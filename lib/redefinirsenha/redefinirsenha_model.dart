import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RedefinirsenhaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for seu_nome widget.
  TextEditingController? seuNomeController;
  String? Function(BuildContext, String?)? seuNomeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    seuNomeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
