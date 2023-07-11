import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EdadPerroRecord extends FirestoreRecord {
  EdadPerroRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "edad" field.
  String? _edad;
  String get edad => _edad ?? '';
  bool hasEdad() => _edad != null;

  // "rango" field.
  String? _rango;
  String get rango => _rango ?? '';
  bool hasRango() => _rango != null;

  // "tamanio" field.
  String? _tamanio;
  String get tamanio => _tamanio ?? '';
  bool hasTamanio() => _tamanio != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  void _initializeFields() {
    _edad = snapshotData['edad'] as String?;
    _rango = snapshotData['rango'] as String?;
    _tamanio = snapshotData['tamanio'] as String?;
    _tipo = snapshotData['tipo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('edad_perro');

  static Stream<EdadPerroRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EdadPerroRecord.fromSnapshot(s));

  static Future<EdadPerroRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EdadPerroRecord.fromSnapshot(s));

  static EdadPerroRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EdadPerroRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EdadPerroRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EdadPerroRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EdadPerroRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EdadPerroRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEdadPerroRecordData({
  String? edad,
  String? rango,
  String? tamanio,
  String? tipo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'edad': edad,
      'rango': rango,
      'tamanio': tamanio,
      'tipo': tipo,
    }.withoutNulls,
  );

  return firestoreData;
}

class EdadPerroRecordDocumentEquality implements Equality<EdadPerroRecord> {
  const EdadPerroRecordDocumentEquality();

  @override
  bool equals(EdadPerroRecord? e1, EdadPerroRecord? e2) {
    return e1?.edad == e2?.edad &&
        e1?.rango == e2?.rango &&
        e1?.tamanio == e2?.tamanio &&
        e1?.tipo == e2?.tipo;
  }

  @override
  int hash(EdadPerroRecord? e) =>
      const ListEquality().hash([e?.edad, e?.rango, e?.tamanio, e?.tipo]);

  @override
  bool isValidKey(Object? o) => o is EdadPerroRecord;
}
