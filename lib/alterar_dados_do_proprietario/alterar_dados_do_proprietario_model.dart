import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class AlterarDadosDoProprietarioModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Placa widget.
  TextEditingController? placaController;
  String? Function(BuildContext, String?)? placaControllerValidator;
  String? _placaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (!RegExp('[A-Z]').hasMatch(val)) {
      return 'Digite apenas em letra maiúscula';
    }
    return null;
  }

  List<VeiculoRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    placaControllerValidator = _placaControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    placaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
