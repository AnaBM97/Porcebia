import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProveedoresRecord extends FirestoreRecord {
  ProveedoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _correo = snapshotData['correo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('proveedores');

  static Stream<ProveedoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProveedoresRecord.fromSnapshot(s));

  static Future<ProveedoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProveedoresRecord.fromSnapshot(s));

  static ProveedoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProveedoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProveedoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProveedoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProveedoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProveedoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProveedoresRecordData({
  String? nombre,
  String? direccion,
  String? telefono,
  String? correo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'direccion': direccion,
      'telefono': telefono,
      'correo': correo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProveedoresRecordDocumentEquality implements Equality<ProveedoresRecord> {
  const ProveedoresRecordDocumentEquality();

  @override
  bool equals(ProveedoresRecord? e1, ProveedoresRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.direccion == e2?.direccion &&
        e1?.telefono == e2?.telefono &&
        e1?.correo == e2?.correo;
  }

  @override
  int hash(ProveedoresRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.direccion, e?.telefono, e?.correo]);

  @override
  bool isValidKey(Object? o) => o is ProveedoresRecord;
}
