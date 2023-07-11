import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecomendacionesRecord extends FirestoreRecord {
  RecomendacionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "creadtedAt" field.
  DateTime? _creadtedAt;
  DateTime? get creadtedAt => _creadtedAt;
  bool hasCreadtedAt() => _creadtedAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _description = snapshotData['description'] as String?;
    _creadtedAt = snapshotData['creadtedAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recomendaciones');

  static Stream<RecomendacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecomendacionesRecord.fromSnapshot(s));

  static Future<RecomendacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecomendacionesRecord.fromSnapshot(s));

  static RecomendacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecomendacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecomendacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecomendacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecomendacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecomendacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecomendacionesRecordData({
  String? type,
  String? description,
  DateTime? creadtedAt,
  DateTime? updatedAt,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'description': description,
      'creadtedAt': creadtedAt,
      'updatedAt': updatedAt,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecomendacionesRecordDocumentEquality
    implements Equality<RecomendacionesRecord> {
  const RecomendacionesRecordDocumentEquality();

  @override
  bool equals(RecomendacionesRecord? e1, RecomendacionesRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.description == e2?.description &&
        e1?.creadtedAt == e2?.creadtedAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.title == e2?.title;
  }

  @override
  int hash(RecomendacionesRecord? e) => const ListEquality()
      .hash([e?.type, e?.description, e?.creadtedAt, e?.updatedAt, e?.title]);

  @override
  bool isValidKey(Object? o) => o is RecomendacionesRecord;
}
