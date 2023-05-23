import 'dart:async';

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

  // "dogPhoto" field.
  String? _dogPhoto;
  String get dogPhoto => _dogPhoto ?? '';
  bool hasDogPhoto() => _dogPhoto != null;

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

  void _initializeFields() {
    _userAssociation = snapshotData['userAssociation'] as DocumentReference?;
    _dogPhoto = snapshotData['dogPhoto'] as String?;
    _dogName = snapshotData['dogName'] as String?;
    _dogType = snapshotData['dogType'] as String?;
    _dogAge = snapshotData['dogAge'] as String?;
    _dogBio = snapshotData['dogBio'] as String?;
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
}

Map<String, dynamic> createDogsRecordData({
  DocumentReference? userAssociation,
  String? dogPhoto,
  String? dogName,
  String? dogType,
  String? dogAge,
  String? dogBio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userAssociation': userAssociation,
      'dogPhoto': dogPhoto,
      'dogName': dogName,
      'dogType': dogType,
      'dogAge': dogAge,
      'dogBio': dogBio,
    }.withoutNulls,
  );

  return firestoreData;
}
