import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarritoRecord extends FirestoreRecord {
  CarritoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "FotoProducto" field.
  String? _fotoProducto;
  String get fotoProducto => _fotoProducto ?? '';
  bool hasFotoProducto() => _fotoProducto != null;

  // "NombreProducto" field.
  String? _nombreProducto;
  String get nombreProducto => _nombreProducto ?? '';
  bool hasNombreProducto() => _nombreProducto != null;

  // "PrecioProducto" field.
  double? _precioProducto;
  double get precioProducto => _precioProducto ?? 0.0;
  bool hasPrecioProducto() => _precioProducto != null;

  // "Producto" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  bool hasProducto() => _producto != null;

  // "Cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  // "TallaProducto" field.
  String? _tallaProducto;
  String get tallaProducto => _tallaProducto ?? '';
  bool hasTallaProducto() => _tallaProducto != null;

  void _initializeFields() {
    _fotoProducto = snapshotData['FotoProducto'] as String?;
    _nombreProducto = snapshotData['NombreProducto'] as String?;
    _precioProducto = castToType<double>(snapshotData['PrecioProducto']);
    _producto = snapshotData['Producto'] as DocumentReference?;
    _cantidad = castToType<int>(snapshotData['Cantidad']);
    _subTotal = castToType<double>(snapshotData['subTotal']);
    _tallaProducto = snapshotData['TallaProducto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Carrito');

  static Stream<CarritoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarritoRecord.fromSnapshot(s));

  static Future<CarritoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarritoRecord.fromSnapshot(s));

  static CarritoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarritoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarritoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarritoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarritoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarritoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarritoRecordData({
  String? fotoProducto,
  String? nombreProducto,
  double? precioProducto,
  DocumentReference? producto,
  int? cantidad,
  double? subTotal,
  String? tallaProducto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'FotoProducto': fotoProducto,
      'NombreProducto': nombreProducto,
      'PrecioProducto': precioProducto,
      'Producto': producto,
      'Cantidad': cantidad,
      'subTotal': subTotal,
      'TallaProducto': tallaProducto,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarritoRecordDocumentEquality implements Equality<CarritoRecord> {
  const CarritoRecordDocumentEquality();

  @override
  bool equals(CarritoRecord? e1, CarritoRecord? e2) {
    return e1?.fotoProducto == e2?.fotoProducto &&
        e1?.nombreProducto == e2?.nombreProducto &&
        e1?.precioProducto == e2?.precioProducto &&
        e1?.producto == e2?.producto &&
        e1?.cantidad == e2?.cantidad &&
        e1?.subTotal == e2?.subTotal &&
        e1?.tallaProducto == e2?.tallaProducto;
  }

  @override
  int hash(CarritoRecord? e) => const ListEquality().hash([
        e?.fotoProducto,
        e?.nombreProducto,
        e?.precioProducto,
        e?.producto,
        e?.cantidad,
        e?.subTotal,
        e?.tallaProducto
      ]);

  @override
  bool isValidKey(Object? o) => o is CarritoRecord;
}
