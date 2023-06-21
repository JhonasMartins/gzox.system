import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/permissions_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RetornoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Placa widget.
  TextEditingController? placaController;
  String? Function(BuildContext, String?)? placaControllerValidator;
  // State field(s) for codigo_do_produto widget.
  TextEditingController? codigoDoProdutoController;
  String? Function(BuildContext, String?)? codigoDoProdutoControllerValidator;
  DateTime? datePicked;
  // State field(s) for Produto_principal widget.
  String? produtoPrincipalValue;
  FormFieldController<String>? produtoPrincipalValueController;
  // State field(s) for Produtos_secundarios widget.
  List<String>? produtosSecundariosValues;
  FormFieldController<List<String>>? produtosSecundariosValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    placaController?.dispose();
    codigoDoProdutoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
