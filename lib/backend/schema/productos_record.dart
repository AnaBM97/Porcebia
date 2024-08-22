import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosRecord extends FirestoreRecord {
  ProductosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "TipoPrenda" field.
  String? _tipoPrenda;
  String get tipoPrenda => _tipoPrenda ?? '';
  bool hasTipoPrenda() => _tipoPrenda != null;

  // "NombrePrenda" field.
  String? _nombrePrenda;
  String get nombrePrenda => _nombrePrenda ?? '';
  bool hasNombrePrenda() => _nombrePrenda != null;

  // "Precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "Talla" field.
  String? _talla;
  String get talla => _talla ?? '';
  bool hasTalla() => _talla != null;

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "categoria" field.
  DocumentReference? _categoria;
  DocumentReference? get categoria => _categoria;
  bool hasCategoria() => _categoria != null;

  // "ComentarioProducto" field.
  List<DocumentReference>? _comentarioProducto;
  List<DocumentReference> get comentarioProducto =>
      _comentarioProducto ?? const [];
  bool hasComentarioProducto() => _comentarioProducto != null;

  // "Carrito" field.
  List<DocumentReference>? _carrito;
  List<DocumentReference> get carrito => _carrito ?? const [];
  bool hasCarrito() => _carrito != null;

  void _initializeFields() {
    _tipoPrenda = snapshotData['TipoPrenda'] as String?;
    _nombrePrenda = snapshotData['NombrePrenda'] as String?;
    _precio = castToType<double>(snapshotData['Precio']);
    _talla = snapshotData['Talla'] as String?;
    _foto = snapshotData['Foto'] as String?;
    _categoria = snapshotData['categoria'] as DocumentReference?;
    _comentarioProducto = getDataList(snapshotData['ComentarioProducto']);
    _carrito = getDataList(snapshotData['Carrito']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosRecord.fromSnapshot(s));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosRecord.fromSnapshot(s));

  static ProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosRecordData({
  String? tipoPrenda,
  String? nombrePrenda,
  double? precio,
  String? talla,
  String? foto,
  DocumentReference? categoria,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'TipoPrenda': tipoPrenda,
      'NombrePrenda': nombrePrenda,
      'Precio': precio,
      'Talla': talla,
      'Foto': foto,
      'categoria': categoria,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosRecordDocumentEquality implements Equality<ProductosRecord> {
  const ProductosRecordDocumentEquality();

  @override
  bool equals(ProductosRecord? e1, ProductosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.tipoPrenda == e2?.tipoPrenda &&
        e1?.nombrePrenda == e2?.nombrePrenda &&
        e1?.precio == e2?.precio &&
        e1?.talla == e2?.talla &&
        e1?.foto == e2?.foto &&
        e1?.categoria == e2?.categoria &&
        listEquality.equals(e1?.comentarioProducto, e2?.comentarioProducto) &&
        listEquality.equals(e1?.carrito, e2?.carrito);
  }

  @override
  int hash(ProductosRecord? e) => const ListEquality().hash([
        e?.tipoPrenda,
        e?.nombrePrenda,
        e?.precio,
        e?.talla,
        e?.foto,
        e?.categoria,
        e?.comentarioProducto,
        e?.carrito
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductosRecord;
}
