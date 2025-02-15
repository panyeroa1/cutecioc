import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImagesRecord extends FirestoreRecord {
  ImagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "Image3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

  // "Image4" field.
  String? _image4;
  String get image4 => _image4 ?? '';
  bool hasImage4() => _image4 != null;

  // "Image5" field.
  String? _image5;
  String get image5 => _image5 ?? '';
  bool hasImage5() => _image5 != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _image2 = snapshotData['Image2'] as String?;
    _image3 = snapshotData['Image3'] as String?;
    _image4 = snapshotData['Image4'] as String?;
    _image5 = snapshotData['Image5'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('images')
          : FirebaseFirestore.instance.collectionGroup('images');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('images').doc(id);

  static Stream<ImagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ImagesRecord.fromSnapshot(s));

  static Future<ImagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ImagesRecord.fromSnapshot(s));

  static ImagesRecord fromSnapshot(DocumentSnapshot snapshot) => ImagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ImagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ImagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ImagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ImagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImagesRecordData({
  String? image,
  String? image2,
  String? image3,
  String? image4,
  String? image5,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'Image2': image2,
      'Image3': image3,
      'Image4': image4,
      'Image5': image5,
    }.withoutNulls,
  );

  return firestoreData;
}

class ImagesRecordDocumentEquality implements Equality<ImagesRecord> {
  const ImagesRecordDocumentEquality();

  @override
  bool equals(ImagesRecord? e1, ImagesRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.image2 == e2?.image2 &&
        e1?.image3 == e2?.image3 &&
        e1?.image4 == e2?.image4 &&
        e1?.image5 == e2?.image5;
  }

  @override
  int hash(ImagesRecord? e) => const ListEquality()
      .hash([e?.image, e?.image2, e?.image3, e?.image4, e?.image5]);

  @override
  bool isValidKey(Object? o) => o is ImagesRecord;
}
