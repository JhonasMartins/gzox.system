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

class ManutencaoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;
  // State field(s) for Produto_principal widget.
  String? produtoPrincipalValue;
  FormFieldController<String>? produtoPrincipalValueController;
  // State field(s) for oque_foi_feito widget.
  TextEditingController? oqueFoiFeitoController;
  String? Function(BuildContext, String?)? oqueFoiFeitoControllerValidator;
  // State field(s) for tire widget.
  String? tireValue;
  FormFieldController<String>? tireValueController;
  // State field(s) for Nano widget.
  String? nanoValue;
  FormFieldController<String>? nanoValueController;
  // State field(s) for Whell widget.
  String? whellValue;
  FormFieldController<String>? whellValueController;
  // State field(s) for Prospec widget.
  String? prospecValue;
  FormFieldController<String>? prospecValueController;
  // State field(s) for Couro widget.
  String? couroValue;
  FormFieldController<String>? couroValueController;
  // State field(s) for Light widget.
  String? lightValue;
  FormFieldController<String>? lightValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    oqueFoiFeitoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
