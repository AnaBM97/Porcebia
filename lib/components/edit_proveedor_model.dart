import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'edit_proveedor_widget.dart' show EditProveedorWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProveedorModel extends FlutterFlowModel<EditProveedorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TxtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for TxtDireccion widget.
  FocusNode? txtDireccionFocusNode;
  TextEditingController? txtDireccionTextController;
  String? Function(BuildContext, String?)? txtDireccionTextControllerValidator;
  // State field(s) for TtxTelefono widget.
  FocusNode? ttxTelefonoFocusNode;
  TextEditingController? ttxTelefonoTextController;
  String? Function(BuildContext, String?)? ttxTelefonoTextControllerValidator;
  // State field(s) for TtxCorreo widget.
  FocusNode? ttxCorreoFocusNode;
  TextEditingController? ttxCorreoTextController;
  String? Function(BuildContext, String?)? ttxCorreoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtDireccionFocusNode?.dispose();
    txtDireccionTextController?.dispose();

    ttxTelefonoFocusNode?.dispose();
    ttxTelefonoTextController?.dispose();

    ttxCorreoFocusNode?.dispose();
    ttxCorreoTextController?.dispose();
  }
}
