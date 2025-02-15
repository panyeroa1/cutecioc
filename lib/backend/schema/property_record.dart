import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertyRecord extends FirestoreRecord {
  PropertyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "zip" field.
  String? _zip;
  String get zip => _zip ?? '';
  bool hasZip() => _zip != null;

  // "latLng" field.
  LatLng? _latLng;
  LatLng? get latLng => _latLng;
  bool hasLatLng() => _latLng != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _price = castToType<double>(snapshotData['price']);
    _address = snapshotData['address'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _zip = snapshotData['zip'] as String?;
    _latLng = snapshotData['latLng'] as LatLng?;
    _image = snapshotData['image'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('property');

  static Stream<PropertyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PropertyRecord.fromSnapshot(s));

  static Future<PropertyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PropertyRecord.fromSnapshot(s));

  static PropertyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PropertyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PropertyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PropertyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PropertyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PropertyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPropertyRecordData({
  String? name,
  double? rating,
  double? price,
  String? address,
  String? city,
  String? state,
  String? zip,
  LatLng? latLng,
  String? image,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'rating': rating,
      'price': price,
      'address': address,
      'city': city,
      'state': state,
      'zip': zip,
      'latLng': latLng,
      'image': image,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class PropertyRecordDocumentEquality implements Equality<PropertyRecord> {
  const PropertyRecordDocumentEquality();

  @override
  bool equals(PropertyRecord? e1, PropertyRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.rating == e2?.rating &&
        e1?.price == e2?.price &&
        e1?.address == e2?.address &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.zip == e2?.zip &&
        e1?.latLng == e2?.latLng &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description;
  }

  @override
  int hash(PropertyRecord? e) => const ListEquality().hash([
        e?.name,
        e?.rating,
        e?.price,
        e?.address,
        e?.city,
        e?.state,
        e?.zip,
        e?.latLng,
        e?.image,
        e?.description
      ]);

  @override
  bool isValidKey(Object? o) => o is PropertyRecord;
}
