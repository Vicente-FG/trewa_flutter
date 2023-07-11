import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PinsRecord extends FirestoreRecord {
  PinsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  bool hasNumber() => _number != null;

  // "web" field.
  String? _web;
  String get web => _web ?? '';
  bool hasWeb() => _web != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _type = snapshotData['type'] as String?;
    _description = snapshotData['description'] as String?;
    _color = getSchemaColor(snapshotData['color']);
    _email = snapshotData['email'] as String?;
    _number = snapshotData['number'] as String?;
    _web = snapshotData['web'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pins');

  static Stream<PinsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PinsRecord.fromSnapshot(s));

  static Future<PinsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PinsRecord.fromSnapshot(s));

  static PinsRecord fromSnapshot(DocumentSnapshot snapshot) => PinsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PinsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PinsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PinsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PinsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPinsRecordData({
  String? name,
  LatLng? location,
  String? type,
  String? description,
  Color? color,
  String? email,
  String? number,
  String? web,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'location': location,
      'type': type,
      'description': description,
      'color': color,
      'email': email,
      'number': number,
      'web': web,
    }.withoutNulls,
  );

  return firestoreData;
}

class PinsRecordDocumentEquality implements Equality<PinsRecord> {
  const PinsRecordDocumentEquality();

  @override
  bool equals(PinsRecord? e1, PinsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.location == e2?.location &&
        e1?.type == e2?.type &&
        e1?.description == e2?.description &&
        e1?.color == e2?.color &&
        e1?.email == e2?.email &&
        e1?.number == e2?.number &&
        e1?.web == e2?.web;
  }

  @override
  int hash(PinsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.location,
        e?.type,
        e?.description,
        e?.color,
        e?.email,
        e?.number,
        e?.web
      ]);

  @override
  bool isValidKey(Object? o) => o is PinsRecord;
}
