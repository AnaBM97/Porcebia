import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'mostrar_prenda_widget.dart' show MostrarPrendaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MostrarPrendaModel extends FlutterFlowModel<MostrarPrendaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for tfComentario widget.
  FocusNode? tfComentarioFocusNode;
  TextEditingController? tfComentarioTextController;
  String? Function(BuildContext, String?)? tfComentarioTextControllerValidator;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfComentarioFocusNode?.dispose();
    tfComentarioTextController?.dispose();
  }
}
