import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AmenitiesRecord extends FirestoreRecord {
  AmenitiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "gym" field.
  bool? _gym;
  bool get gym => _gym ?? false;
  bool hasGym() => _gym != null;

  // "freeWifi" field.
  bool? _freeWifi;
  bool get freeWifi => _freeWifi ?? false;
  bool hasFreeWifi() => _freeWifi != null;

  // "indoorPool" field.
  bool? _indoorPool;
  bool get indoorPool => _indoorPool ?? false;
  bool hasIndoorPool() => _indoorPool != null;

  // "parking" field.
  bool? _parking;
  bool get parking => _parking ?? false;
  bool hasParking() => _parking != null;

  // "breakfast" field.
  bool? _breakfast;
  bool get breakfast => _breakfast ?? false;
  bool hasBreakfast() => _breakfast != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _gym = snapshotData['gym'] as bool?;
    _freeWifi = snapshotData['freeWifi'] as bool?;
    _indoorPool = snapshotData['indoorPool'] as bool?;
    _parking = snapshotData['parking'] as bool?;
    _breakfast = snapshotData['breakfast'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('amenities')
          : FirebaseFirestore.instance.collectionGroup('amenities');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('amenities').doc(id);

  static Stream<AmenitiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AmenitiesRecord.fromSnapshot(s));

  static Future<AmenitiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AmenitiesRecord.fromSnapshot(s));

  static AmenitiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AmenitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AmenitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AmenitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AmenitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AmenitiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAmenitiesRecordData({
  bool? gym,
  bool? freeWifi,
  bool? indoorPool,
  bool? parking,
  bool? breakfast,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'gym': gym,
      'freeWifi': freeWifi,
      'indoorPool': indoorPool,
      'parking': parking,
      'breakfast': breakfast,
    }.withoutNulls,
  );

  return firestoreData;
}

class AmenitiesRecordDocumentEquality implements Equality<AmenitiesRecord> {
  const AmenitiesRecordDocumentEquality();

  @override
  bool equals(AmenitiesRecord? e1, AmenitiesRecord? e2) {
    return e1?.gym == e2?.gym &&
        e1?.freeWifi == e2?.freeWifi &&
        e1?.indoorPool == e2?.indoorPool &&
        e1?.parking == e2?.parking &&
        e1?.breakfast == e2?.breakfast;
  }

  @override
  int hash(AmenitiesRecord? e) => const ListEquality()
      .hash([e?.gym, e?.freeWifi, e?.indoorPool, e?.parking, e?.breakfast]);

  @override
  bool isValidKey(Object? o) => o is AmenitiesRecord;
}
