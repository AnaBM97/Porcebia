import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComentariosRecord extends FirestoreRecord {
  ComentariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "comentario" field.
  String? _comentario;
  String get comentario => _comentario ?? '';
  bool hasComentario() => _comentario != null;

  // "calificacion" field.
  double? _calificacion;
  double get calificacion => _calificacion ?? 0.0;
  bool hasCalificacion() => _calificacion != null;

  // "ComentarioProducto" field.
  DocumentReference? _comentarioProducto;
  DocumentReference? get comentarioProducto => _comentarioProducto;
  bool hasComentarioProducto() => _comentarioProducto != null;

  void _initializeFields() {
    _fecha = snapshotData['fecha'] as DateTime?;
    _comentario = snapshotData['comentario'] as String?;
    _calificacion = castToType<double>(snapshotData['calificacion']);
    _comentarioProducto =
        snapshotData['ComentarioProducto'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Comentarios');

  static Stream<ComentariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComentariosRecord.fromSnapshot(s));

  static Future<ComentariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ComentariosRecord.fromSnapshot(s));

  static ComentariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ComentariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComentariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComentariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComentariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComentariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComentariosRecordData({
  DateTime? fecha,
  String? comentario,
  double? calificacion,
  DocumentReference? comentarioProducto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fecha': fecha,
      'comentario': comentario,
      'calificacion': calificacion,
      'ComentarioProducto': comentarioProducto,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComentariosRecordDocumentEquality implements Equality<ComentariosRecord> {
  const ComentariosRecordDocumentEquality();

  @override
  bool equals(ComentariosRecord? e1, ComentariosRecord? e2) {
    return e1?.fecha == e2?.fecha &&
        e1?.comentario == e2?.comentario &&
        e1?.calificacion == e2?.calificacion &&
        e1?.comentarioProducto == e2?.comentarioProducto;
  }

  @override
  int hash(ComentariosRecord? e) => const ListEquality()
      .hash([e?.fecha, e?.comentario, e?.calificacion, e?.comentarioProducto]);

  @override
  bool isValidKey(Object? o) => o is ComentariosRecord;
}
