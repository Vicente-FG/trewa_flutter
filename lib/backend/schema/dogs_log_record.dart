import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DogsLogRecord extends FirestoreRecord {
  DogsLogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dogsReference" field.
  DocumentReference? _dogsReference;
  DocumentReference? get dogsReference => _dogsReference;
  bool hasDogsReference() => _dogsReference != null;

  // "dayReference" field.
  DateTime? _dayReference;
  DateTime? get dayReference => _dayReference;
  bool hasDayReference() => _dayReference != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "inputAgua" field.
  double? _inputAgua;
  double get inputAgua => _inputAgua ?? 0.0;
  bool hasInputAgua() => _inputAgua != null;

  // "inputActividad" field.
  double? _inputActividad;
  double get inputActividad => _inputActividad ?? 0.0;
  bool hasInputActividad() => _inputActividad != null;

  // "InputAlimentacion" field.
  double? _inputAlimentacion;
  double get inputAlimentacion => _inputAlimentacion ?? 0.0;
  bool hasInputAlimentacion() => _inputAlimentacion != null;

  void _initializeFields() {
    _dogsReference = snapshotData['dogsReference'] as DocumentReference?;
    _dayReference = snapshotData['dayReference'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _inputAgua = castToType<double>(snapshotData['inputAgua']);
    _inputActividad = castToType<double>(snapshotData['inputActividad']);
    _inputAlimentacion = castToType<double>(snapshotData['InputAlimentacion']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dogs_log');

  static Stream<DogsLogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DogsLogRecord.fromSnapshot(s));

  static Future<DogsLogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DogsLogRecord.fromSnapshot(s));

  static DogsLogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DogsLogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DogsLogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DogsLogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DogsLogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DogsLogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDogsLogRecordData({
  DocumentReference? dogsReference,
  DateTime? dayReference,
  DateTime? updatedAt,
  double? inputAgua,
  double? inputActividad,
  double? inputAlimentacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dogsReference': dogsReference,
      'dayReference': dayReference,
      'updatedAt': updatedAt,
      'inputAgua': inputAgua,
      'inputActividad': inputActividad,
      'InputAlimentacion': inputAlimentacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class DogsLogRecordDocumentEquality implements Equality<DogsLogRecord> {
  const DogsLogRecordDocumentEquality();

  @override
  bool equals(DogsLogRecord? e1, DogsLogRecord? e2) {
    return e1?.dogsReference == e2?.dogsReference &&
        e1?.dayReference == e2?.dayReference &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.inputAgua == e2?.inputAgua &&
        e1?.inputActividad == e2?.inputActividad &&
        e1?.inputAlimentacion == e2?.inputAlimentacion;
  }

  @override
  int hash(DogsLogRecord? e) => const ListEquality().hash([
        e?.dogsReference,
        e?.dayReference,
        e?.updatedAt,
        e?.inputAgua,
        e?.inputActividad,
        e?.inputAlimentacion
      ]);

  @override
  bool isValidKey(Object? o) => o is DogsLogRecord;
}
