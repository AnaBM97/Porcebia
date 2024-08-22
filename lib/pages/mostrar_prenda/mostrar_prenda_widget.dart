import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mostrar_prenda_model.dart';
export 'mostrar_prenda_model.dart';

class MostrarPrendaWidget extends StatefulWidget {
  const MostrarPrendaWidget({
    super.key,
    this.mostrarPrenda,
  });

  final ProductosRecord? mostrarPrenda;

  @override
  State<MostrarPrendaWidget> createState() => _MostrarPrendaWidgetState();
}

class _MostrarPrendaWidgetState extends State<MostrarPrendaWidget> {
  late MostrarPrendaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MostrarPrendaModel());

    _model.tfComentarioTextController ??= TextEditingController();
    _model.tfComentarioFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFA386BC),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Opacity(
                  opacity: 0.9,
                  child: Container(
                    width: double.infinity,
                    height: 56.0,
                    decoration: BoxDecoration(
                      color: Color(0x97DAE3E5),
                    ),
                    child: Opacity(
                      opacity: 0.6,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            icon: Icon(
                              Icons.chevron_left_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              context.safePop();
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            icon: Icon(
                              Icons.shopping_basket,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                'Carrito',
                                queryParameters: {
                                  'fotoProducto': serializeParam(
                                    widget!.mostrarPrenda?.foto,
                                    ParamType.String,
                                  ),
                                  'nombreProducto': serializeParam(
                                    widget!.mostrarPrenda?.nombrePrenda,
                                    ParamType.String,
                                  ),
                                  'precioProducto': serializeParam(
                                    widget!.mostrarPrenda?.precio,
                                    ParamType.double,
                                  ),
                                  'tallaProduc': serializeParam(
                                    widget!.mostrarPrenda?.talla,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: StreamBuilder<List<ProductosRecord>>(
                    stream: queryProductosRecord(
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<ProductosRecord> containerProductosRecordList =
                          snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final containerProductosRecord =
                          containerProductosRecordList.isNotEmpty
                              ? containerProductosRecordList.first
                              : null;

                      return Container(
                        width: double.infinity,
                        height: 520.0,
                        constraints: BoxConstraints(
                          maxWidth: double.infinity,
                          maxHeight: double.infinity,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  30.0, 20.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    widget!.mostrarPrenda!.tipoPrenda,
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 300.0,
                              height: 300.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Image.network(
                                  widget!.mostrarPrenda!.foto,
                                  width: 300.0,
                                  height: 300.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  30.0, 0.0, 30.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: Text(
                                      widget!.mostrarPrenda!.nombrePrenda,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                    child: VerticalDivider(
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      '₡${valueOrDefault<String>(
                                        widget!.mostrarPrenda?.precio
                                            ?.toString(),
                                        'No disponible',
                                      )}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  30.0, 0.0, 30.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Medidas: ${widget!.mostrarPrenda?.talla}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await CarritoRecord.collection
                                      .doc()
                                      .set(createCarritoRecordData(
                                        fotoProducto:
                                            widget!.mostrarPrenda?.foto,
                                        nombreProducto:
                                            widget!.mostrarPrenda?.nombrePrenda,
                                        precioProducto:
                                            widget!.mostrarPrenda?.precio,
                                        producto:
                                            widget!.mostrarPrenda?.reference,
                                        cantidad: 1,
                                        subTotal: functions.calcularSubtotal(
                                            widget!.mostrarPrenda!.precio, 1),
                                        tallaProducto:
                                            widget!.mostrarPrenda?.talla,
                                      ));

                                  context.pushNamed(
                                    'Carrito',
                                    queryParameters: {
                                      'fotoProducto': serializeParam(
                                        widget!.mostrarPrenda?.foto,
                                        ParamType.String,
                                      ),
                                      'nombreProducto': serializeParam(
                                        widget!.mostrarPrenda?.nombrePrenda,
                                        ParamType.String,
                                      ),
                                      'precioProducto': serializeParam(
                                        widget!.mostrarPrenda?.precio,
                                        ParamType.double,
                                      ),
                                      'tallaProduc': serializeParam(
                                        widget!.mostrarPrenda?.talla,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                text: 'COMPRAR',
                                options: FFButtonOptions(
                                  width: 200.0,
                                  height: 60.0,
                                  padding: EdgeInsets.all(0.0),
                                  iconPadding: EdgeInsets.all(4.0),
                                  color: Color(0xFFD7CAE0),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 350.0,
                  child: Divider(
                    thickness: 1.0,
                    color: Color(0xFFE4A7CC),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Comentarios',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: StreamBuilder<List<ComentariosRecord>>(
                    stream: queryComentariosRecord(
                      queryBuilder: (comentariosRecord) =>
                          comentariosRecord.where(
                        'ComentarioProducto',
                        isEqualTo: widget!.mostrarPrenda?.reference,
                      ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<ComentariosRecord> listViewComentariosRecordList =
                          snapshot.data!;

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewComentariosRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewComentariosRecord =
                              listViewComentariosRecordList[listViewIndex];
                          return Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          listViewComentariosRecord.fecha!
                                              .toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                          child: VerticalDivider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: RatingBarIndicator(
                                            itemBuilder: (context, index) =>
                                                Icon(
                                              Icons.favorite,
                                              color: Color(0x9CB977D8),
                                            ),
                                            direction: Axis.horizontal,
                                            rating: listViewComentariosRecord
                                                .calificacion,
                                            unratedColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent2,
                                            itemCount: 5,
                                            itemSize: 15.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          listViewComentariosRecord.comentario,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 350.0,
                  child: Divider(
                    thickness: 1.0,
                    color: Color(0xFFE4A7CC),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Agregar comentario',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: 349.5,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: _model.tfComentarioTextController,
                        focusNode: _model.tfComentarioFocusNode,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Agregar comentario',
                          hintStyle:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              letterSpacing: 0.0,
                            ),
                        textAlign: TextAlign.start,
                        validator: _model.tfComentarioTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
                RatingBar.builder(
                  onRatingUpdate: (newValue) =>
                      setState(() => _model.ratingBarValue2 = newValue),
                  itemBuilder: (context, index) => Icon(
                    Icons.favorite,
                    color: Color(0xFFE4A7CC),
                  ),
                  direction: Axis.horizontal,
                  initialRating: _model.ratingBarValue2 ??= 3.0,
                  unratedColor: FlutterFlowTheme.of(context).accent2,
                  itemCount: 5,
                  itemSize: 40.0,
                  glowColor: Color(0xFFE4A7CC),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 50.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await ComentariosRecord.collection.doc().set({
                        ...createComentariosRecordData(
                          comentario: _model.tfComentarioTextController.text,
                          calificacion: _model.ratingBarValue2,
                          comentarioProducto: widget!.mostrarPrenda?.reference,
                        ),
                        ...mapToFirestore(
                          {
                            'fecha': FieldValue.serverTimestamp(),
                          },
                        ),
                      });
                      setState(() {
                        _model.tfComentarioTextController?.clear();
                      });
                    },
                    text: 'Agregar Comentario',
                    options: FFButtonOptions(
                      width: 200.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
