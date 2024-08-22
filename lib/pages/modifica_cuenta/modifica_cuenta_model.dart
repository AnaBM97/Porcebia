import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'modifica_cuenta_widget.dart' show ModificaCuentaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModificaCuentaModel extends FlutterFlowModel<ModificaCuentaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNumero widget.
  FocusNode? txtNumeroFocusNode;
  TextEditingController? txtNumeroTextController;
  String? Function(BuildContext, String?)? txtNumeroTextControllerValidator;
  // State field(s) for txtUbicacion widget.
  FocusNode? txtUbicacionFocusNode;
  TextEditingController? txtUbicacionTextController;
  String? Function(BuildContext, String?)? txtUbicacionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNumeroFocusNode?.dispose();
    txtNumeroTextController?.dispose();

    txtUbicacionFocusNode?.dispose();
    txtUbicacionTextController?.dispose();
  }
}
