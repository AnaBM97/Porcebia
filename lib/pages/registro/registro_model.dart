import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'registro_widget.dart' show RegistroWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistroModel extends FlutterFlowModel<RegistroWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  // State field(s) for txtClave widget.
  FocusNode? txtClaveFocusNode;
  TextEditingController? txtClaveTextController;
  late bool txtClaveVisibility;
  String? Function(BuildContext, String?)? txtClaveTextControllerValidator;
  // State field(s) for txtNumero widget.
  FocusNode? txtNumeroFocusNode;
  TextEditingController? txtNumeroTextController;
  String? Function(BuildContext, String?)? txtNumeroTextControllerValidator;
  // State field(s) for txtUbicacion widget.
  FocusNode? txtUbicacionFocusNode;
  TextEditingController? txtUbicacionTextController;
  String? Function(BuildContext, String?)? txtUbicacionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtClaveVisibility = false;
  }

  @override
  void dispose() {
    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtClaveFocusNode?.dispose();
    txtClaveTextController?.dispose();

    txtNumeroFocusNode?.dispose();
    txtNumeroTextController?.dispose();

    txtUbicacionFocusNode?.dispose();
    txtUbicacionTextController?.dispose();
  }
}
