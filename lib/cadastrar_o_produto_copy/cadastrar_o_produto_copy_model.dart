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
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadastrarOProdutoCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for codigo_do_produto widget.
  TextEditingController? codigoDoProdutoController;
  String? Function(BuildContext, String?)? codigoDoProdutoControllerValidator;
  DateTime? datePicked;
  // State field(s) for Produto_principal widget.
  String? produtoPrincipalValue;
  FormFieldController<String>? produtoPrincipalValueController;
  // State field(s) for light widget.
  String? lightValue;
  FormFieldController<String>? lightValueController;
  // State field(s) for wheel widget.
  String? wheelValue;
  FormFieldController<String>? wheelValueController;
  // State field(s) for Plastic widget.
  String? plasticValue;
  FormFieldController<String>? plasticValueController;
  // State field(s) for P5 widget.
  String? p5Value;
  FormFieldController<String>? p5ValueController;
  // State field(s) for Couro widget.
  String? couroValue;
  FormFieldController<String>? couroValueController;
  // State field(s) for tire widget.
  String? tireValue;
  FormFieldController<String>? tireValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    codigoDoProdutoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
