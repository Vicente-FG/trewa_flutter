import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DogsRecord extends FirestoreRecord {
  DogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userAssociation" field.
  DocumentReference? _userAssociation;
  DocumentReference? get userAssociation => _userAssociation;
  bool hasUserAssociation() => _userAssociation != null;

  // "dogName" field.
  String? _dogName;
  String get dogName => _dogName ?? '';
  bool hasDogName() => _dogName != null;

  // "dogType" field.
  String? _dogType;
  String get dogType => _dogType ?? '';
  bool hasDogType() => _dogType != null;

  // "dogAge" field.
  String? _dogAge;
  String get dogAge => _dogAge ?? '';
  bool hasDogAge() => _dogAge != null;

  // "dogBio" field.
  String? _dogBio;
  String get dogBio => _dogBio ?? '';
  bool hasDogBio() => _dogBio != null;

  // "dogSize" field.
  String? _dogSize;
  String get dogSize => _dogSize ?? '';
  bool hasDogSize() => _dogSize != null;

  // "dogPhoto" field.
  List<String>? _dogPhoto;
  List<String> get dogPhoto => _dogPhoto ?? const [];
  bool hasDogPhoto() => _dogPhoto != null;

  // "agua" field.
  double? _agua;
  double get agua => _agua ?? 0.0;
  bool hasAgua() => _agua != null;

  // "alimentacion" field.
  double? _alimentacion;
  double get alimentacion => _alimentacion ?? 0.0;
  bool hasAlimentacion() => _alimentacion != null;

  // "actividad" field.
  double? _actividad;
  double get actividad => _actividad ?? 0.0;
  bool hasActividad() => _actividad != null;

  void _initializeFields() {
    _userAssociation = snapshotData['userAssociation'] as DocumentReference?;
    _dogName = snapshotData['dogName'] as String?;
    _dogType = snapshotData['dogType'] as String?;
    _dogAge = snapshotData['dogAge'] as String?;
    _dogBio = snapshotData['dogBio'] as String?;
    _dogSize = snapshotData['dogSize'] as String?;
    _dogPhoto = getDataList(snapshotData['dogPhoto']);
    _agua = castToType<double>(snapshotData['agua']);
    _alimentacion = castToType<double>(snapshotData['alimentacion']);
    _actividad = castToType<double>(snapshotData['actividad']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dogs');

  static Stream<DogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DogsRecord.fromSnapshot(s));

  static Future<DogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DogsRecord.fromSnapshot(s));

  static DogsRecord fromSnapshot(DocumentSnapshot snapshot) => DogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDogsRecordData({
  DocumentReference? userAssociation,
  String? dogName,
  String? dogType,
  String? dogAge,
  String? dogBio,
  String? dogSize,
  double? agua,
  double? alimentacion,
  double? actividad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userAssociation': userAssociation,
      'dogName': dogName,
      'dogType': dogType,
      'dogAge': dogAge,
      'dogBio': dogBio,
      'dogSize': dogSize,
      'agua': agua,
      'alimentacion': alimentacion,
      'actividad': actividad,
    }.withoutNulls,
  );

  return firestoreData;
}

class DogsRecordDocumentEquality implements Equality<DogsRecord> {
  const DogsRecordDocumentEquality();

  @override
  bool equals(DogsRecord? e1, DogsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userAssociation == e2?.userAssociation &&
        e1?.dogName == e2?.dogName &&
        e1?.dogType == e2?.dogType &&
        e1?.dogAge == e2?.dogAge &&
        e1?.dogBio == e2?.dogBio &&
        e1?.dogSize == e2?.dogSize &&
        listEquality.equals(e1?.dogPhoto, e2?.dogPhoto) &&
        e1?.agua == e2?.agua &&
        e1?.alimentacion == e2?.alimentacion &&
        e1?.actividad == e2?.actividad;
  }

  @override
  int hash(DogsRecord? e) => const ListEquality().hash([
        e?.userAssociation,
        e?.dogName,
        e?.dogType,
        e?.dogAge,
        e?.dogBio,
        e?.dogSize,
        e?.dogPhoto,
        e?.agua,
        e?.alimentacion,
        e?.actividad
      ]);

  @override
  bool isValidKey(Object? o) => o is DogsRecord;
}
