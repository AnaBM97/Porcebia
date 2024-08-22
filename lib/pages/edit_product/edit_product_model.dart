import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_product_widget.dart' show EditProductWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProductModel extends FlutterFlowModel<EditProductWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TtxTipPrenda widget.
  FocusNode? ttxTipPrendaFocusNode;
  TextEditingController? ttxTipPrendaTextController;
  String? Function(BuildContext, String?)? ttxTipPrendaTextControllerValidator;
  // State field(s) for TtxNomPrenda widget.
  FocusNode? ttxNomPrendaFocusNode;
  TextEditingController? ttxNomPrendaTextController;
  String? Function(BuildContext, String?)? ttxNomPrendaTextControllerValidator;
  // State field(s) for TtxPrecio widget.
  FocusNode? ttxPrecioFocusNode;
  TextEditingController? ttxPrecioTextController;
  String? Function(BuildContext, String?)? ttxPrecioTextControllerValidator;
  // State field(s) for TtxTalla widget.
  FocusNode? ttxTallaFocusNode;
  TextEditingController? ttxTallaTextController;
  String? Function(BuildContext, String?)? ttxTallaTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ttxTipPrendaFocusNode?.dispose();
    ttxTipPrendaTextController?.dispose();

    ttxNomPrendaFocusNode?.dispose();
    ttxNomPrendaTextController?.dispose();

    ttxPrecioFocusNode?.dispose();
    ttxPrecioTextController?.dispose();

    ttxTallaFocusNode?.dispose();
    ttxTallaTextController?.dispose();
  }
}
