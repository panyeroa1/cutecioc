import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AvailabilityRecord extends FirestoreRecord {
  AvailabilityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _status = snapshotData['status'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('availability')
          : FirebaseFirestore.instance.collectionGroup('availability');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('availability').doc(id);

  static Stream<AvailabilityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AvailabilityRecord.fromSnapshot(s));

  static Future<AvailabilityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AvailabilityRecord.fromSnapshot(s));

  static AvailabilityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AvailabilityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AvailabilityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AvailabilityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AvailabilityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AvailabilityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAvailabilityRecordData({
  DateTime? date,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class AvailabilityRecordDocumentEquality
    implements Equality<AvailabilityRecord> {
  const AvailabilityRecordDocumentEquality();

  @override
  bool equals(AvailabilityRecord? e1, AvailabilityRecord? e2) {
    return e1?.date == e2?.date && e1?.status == e2?.status;
  }

  @override
  int hash(AvailabilityRecord? e) =>
      const ListEquality().hash([e?.date, e?.status]);

  @override
  bool isValidKey(Object? o) => o is AvailabilityRecord;
}
