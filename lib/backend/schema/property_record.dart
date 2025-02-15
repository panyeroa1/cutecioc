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

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "host_id" field.
  DocumentReference? _hostId;
  DocumentReference? get hostId => _hostId;
  bool hasHostId() => _hostId != null;

  // "formatted_address" field.
  String? _formattedAddress;
  String get formattedAddress => _formattedAddress ?? '';
  bool hasFormattedAddress() => _formattedAddress != null;

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  bool hasLongitude() => _longitude != null;

  // "price_per_night" field.
  double? _pricePerNight;
  double get pricePerNight => _pricePerNight ?? 0.0;
  bool hasPricePerNight() => _pricePerNight != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  bool hasCurrency() => _currency != null;

  // "min_stay" field.
  int? _minStay;
  int get minStay => _minStay ?? 0;
  bool hasMinStay() => _minStay != null;

  // "max_stay" field.
  int? _maxStay;
  int get maxStay => _maxStay ?? 0;
  bool hasMaxStay() => _maxStay != null;

  // "weekly_discount" field.
  double? _weeklyDiscount;
  double get weeklyDiscount => _weeklyDiscount ?? 0.0;
  bool hasWeeklyDiscount() => _weeklyDiscount != null;

  // "monthly_discount" field.
  double? _monthlyDiscount;
  double get monthlyDiscount => _monthlyDiscount ?? 0.0;
  bool hasMonthlyDiscount() => _monthlyDiscount != null;

  // "cleaning_fee" field.
  double? _cleaningFee;
  double get cleaningFee => _cleaningFee ?? 0.0;
  bool hasCleaningFee() => _cleaningFee != null;

  // "wifi" field.
  bool? _wifi;
  bool get wifi => _wifi ?? false;
  bool hasWifi() => _wifi != null;

  // "kitchen" field.
  bool? _kitchen;
  bool get kitchen => _kitchen ?? false;
  bool hasKitchen() => _kitchen != null;

  // "aircon" field.
  bool? _aircon;
  bool get aircon => _aircon ?? false;
  bool hasAircon() => _aircon != null;

  // "parking" field.
  bool? _parking;
  bool get parking => _parking ?? false;
  bool hasParking() => _parking != null;

  // "pet_friendly" field.
  bool? _petFriendly;
  bool get petFriendly => _petFriendly ?? false;
  bool hasPetFriendly() => _petFriendly != null;

  // "pool" field.
  bool? _pool;
  bool get pool => _pool ?? false;
  bool hasPool() => _pool != null;

  // "tv" field.
  bool? _tv;
  bool get tv => _tv ?? false;
  bool hasTv() => _tv != null;

  // "washer" field.
  bool? _washer;
  bool get washer => _washer ?? false;
  bool hasWasher() => _washer != null;

  // "workspace" field.
  bool? _workspace;
  bool get workspace => _workspace ?? false;
  bool hasWorkspace() => _workspace != null;

  // "no_smoking" field.
  bool? _noSmoking;
  bool get noSmoking => _noSmoking ?? false;
  bool hasNoSmoking() => _noSmoking != null;

  // "no_pets" field.
  bool? _noPets;
  bool get noPets => _noPets ?? false;
  bool hasNoPets() => _noPets != null;

  // "quiet_hours" field.
  bool? _quietHours;
  bool get quietHours => _quietHours ?? false;
  bool hasQuietHours() => _quietHours != null;

  // "max_guests" field.
  int? _maxGuests;
  int get maxGuests => _maxGuests ?? 0;
  bool hasMaxGuests() => _maxGuests != null;

  // "payout_maya_wallet" field.
  String? _payoutMayaWallet;
  String get payoutMayaWallet => _payoutMayaWallet ?? '';
  bool hasPayoutMayaWallet() => _payoutMayaWallet != null;

  // "payout_bank_account" field.
  String? _payoutBankAccount;
  String get payoutBankAccount => _payoutBankAccount ?? '';
  bool hasPayoutBankAccount() => _payoutBankAccount != null;

  // "payout_account_name" field.
  String? _payoutAccountName;
  String get payoutAccountName => _payoutAccountName ?? '';
  bool hasPayoutAccountName() => _payoutAccountName != null;

  // "payout_account_type" field.
  String? _payoutAccountType;
  String get payoutAccountType => _payoutAccountType ?? '';
  bool hasPayoutAccountType() => _payoutAccountType != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _category = snapshotData['category'] as String?;
    _hostId = snapshotData['host_id'] as DocumentReference?;
    _formattedAddress = snapshotData['formatted_address'] as String?;
    _latitude = castToType<double>(snapshotData['latitude']);
    _longitude = castToType<double>(snapshotData['longitude']);
    _pricePerNight = castToType<double>(snapshotData['price_per_night']);
    _currency = snapshotData['currency'] as String?;
    _minStay = castToType<int>(snapshotData['min_stay']);
    _maxStay = castToType<int>(snapshotData['max_stay']);
    _weeklyDiscount = castToType<double>(snapshotData['weekly_discount']);
    _monthlyDiscount = castToType<double>(snapshotData['monthly_discount']);
    _cleaningFee = castToType<double>(snapshotData['cleaning_fee']);
    _wifi = snapshotData['wifi'] as bool?;
    _kitchen = snapshotData['kitchen'] as bool?;
    _aircon = snapshotData['aircon'] as bool?;
    _parking = snapshotData['parking'] as bool?;
    _petFriendly = snapshotData['pet_friendly'] as bool?;
    _pool = snapshotData['pool'] as bool?;
    _tv = snapshotData['tv'] as bool?;
    _washer = snapshotData['washer'] as bool?;
    _workspace = snapshotData['workspace'] as bool?;
    _noSmoking = snapshotData['no_smoking'] as bool?;
    _noPets = snapshotData['no_pets'] as bool?;
    _quietHours = snapshotData['quiet_hours'] as bool?;
    _maxGuests = castToType<int>(snapshotData['max_guests']);
    _payoutMayaWallet = snapshotData['payout_maya_wallet'] as String?;
    _payoutBankAccount = snapshotData['payout_bank_account'] as String?;
    _payoutAccountName = snapshotData['payout_account_name'] as String?;
    _payoutAccountType = snapshotData['payout_account_type'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Property');

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
  String? id,
  String? title,
  String? description,
  String? category,
  DocumentReference? hostId,
  String? formattedAddress,
  double? latitude,
  double? longitude,
  double? pricePerNight,
  String? currency,
  int? minStay,
  int? maxStay,
  double? weeklyDiscount,
  double? monthlyDiscount,
  double? cleaningFee,
  bool? wifi,
  bool? kitchen,
  bool? aircon,
  bool? parking,
  bool? petFriendly,
  bool? pool,
  bool? tv,
  bool? washer,
  bool? workspace,
  bool? noSmoking,
  bool? noPets,
  bool? quietHours,
  int? maxGuests,
  String? payoutMayaWallet,
  String? payoutBankAccount,
  String? payoutAccountName,
  String? payoutAccountType,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'host_id': hostId,
      'formatted_address': formattedAddress,
      'latitude': latitude,
      'longitude': longitude,
      'price_per_night': pricePerNight,
      'currency': currency,
      'min_stay': minStay,
      'max_stay': maxStay,
      'weekly_discount': weeklyDiscount,
      'monthly_discount': monthlyDiscount,
      'cleaning_fee': cleaningFee,
      'wifi': wifi,
      'kitchen': kitchen,
      'aircon': aircon,
      'parking': parking,
      'pet_friendly': petFriendly,
      'pool': pool,
      'tv': tv,
      'washer': washer,
      'workspace': workspace,
      'no_smoking': noSmoking,
      'no_pets': noPets,
      'quiet_hours': quietHours,
      'max_guests': maxGuests,
      'payout_maya_wallet': payoutMayaWallet,
      'payout_bank_account': payoutBankAccount,
      'payout_account_name': payoutAccountName,
      'payout_account_type': payoutAccountType,
      'created_at': createdAt,
      'updated_at': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class PropertyRecordDocumentEquality implements Equality<PropertyRecord> {
  const PropertyRecordDocumentEquality();

  @override
  bool equals(PropertyRecord? e1, PropertyRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.category == e2?.category &&
        e1?.hostId == e2?.hostId &&
        e1?.formattedAddress == e2?.formattedAddress &&
        e1?.latitude == e2?.latitude &&
        e1?.longitude == e2?.longitude &&
        e1?.pricePerNight == e2?.pricePerNight &&
        e1?.currency == e2?.currency &&
        e1?.minStay == e2?.minStay &&
        e1?.maxStay == e2?.maxStay &&
        e1?.weeklyDiscount == e2?.weeklyDiscount &&
        e1?.monthlyDiscount == e2?.monthlyDiscount &&
        e1?.cleaningFee == e2?.cleaningFee &&
        e1?.wifi == e2?.wifi &&
        e1?.kitchen == e2?.kitchen &&
        e1?.aircon == e2?.aircon &&
        e1?.parking == e2?.parking &&
        e1?.petFriendly == e2?.petFriendly &&
        e1?.pool == e2?.pool &&
        e1?.tv == e2?.tv &&
        e1?.washer == e2?.washer &&
        e1?.workspace == e2?.workspace &&
        e1?.noSmoking == e2?.noSmoking &&
        e1?.noPets == e2?.noPets &&
        e1?.quietHours == e2?.quietHours &&
        e1?.maxGuests == e2?.maxGuests &&
        e1?.payoutMayaWallet == e2?.payoutMayaWallet &&
        e1?.payoutBankAccount == e2?.payoutBankAccount &&
        e1?.payoutAccountName == e2?.payoutAccountName &&
        e1?.payoutAccountType == e2?.payoutAccountType &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(PropertyRecord? e) => const ListEquality().hash([
        e?.id,
        e?.title,
        e?.description,
        e?.category,
        e?.hostId,
        e?.formattedAddress,
        e?.latitude,
        e?.longitude,
        e?.pricePerNight,
        e?.currency,
        e?.minStay,
        e?.maxStay,
        e?.weeklyDiscount,
        e?.monthlyDiscount,
        e?.cleaningFee,
        e?.wifi,
        e?.kitchen,
        e?.aircon,
        e?.parking,
        e?.petFriendly,
        e?.pool,
        e?.tv,
        e?.washer,
        e?.workspace,
        e?.noSmoking,
        e?.noPets,
        e?.quietHours,
        e?.maxGuests,
        e?.payoutMayaWallet,
        e?.payoutBankAccount,
        e?.payoutAccountName,
        e?.payoutAccountType,
        e?.createdAt,
        e?.updatedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is PropertyRecord;
}
