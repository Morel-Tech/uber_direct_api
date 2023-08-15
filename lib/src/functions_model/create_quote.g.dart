// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateQuoteRequest _$CreateQuoteRequestFromJson(Map<String, dynamic> json) =>
    CreateQuoteRequest(
      pickupAddress: json['pickup_address'] as String,
      dropoffAddress: json['dropoff_address'] as String,
      pickupLatitude: json['pickup_latitude'] as num?,
      pickupLongitude: json['pickup_longitude'] as num?,
      dropoffLatitude: json['dropoff_latitude'] as num?,
      dropoffLongitude: json['dropoff_longitude'] as num?,
      pickupReadyDt: json['pickup_ready_dt'] as String?,
      pickupDeadlineDt: json['pickup_deadline_dt'] as String?,
      dropoffReadyDt: json['dropoff_ready_dt'] as String?,
      dropoffDeadlineDt: json['dropoff_deadline_dt'] as String?,
      pickupPhoneNumber: json['pickup_phone_number'] as String?,
      dropoffPhoneNumber: json['dropoff_phone_number'] as String?,
      manifestTotalValue: json['manifest_total_value'] as int?,
      externalStoreId: json['external_store_id'] as String?,
    );

Map<String, dynamic> _$CreateQuoteRequestToJson(CreateQuoteRequest instance) {
  final val = <String, dynamic>{
    'pickup_address': instance.pickupAddress,
    'dropoff_address': instance.dropoffAddress,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pickup_latitude', instance.pickupLatitude);
  writeNotNull('pickup_longitude', instance.pickupLongitude);
  writeNotNull('dropoff_latitude', instance.dropoffLatitude);
  writeNotNull('dropoff_longitude', instance.dropoffLongitude);
  writeNotNull('pickup_ready_dt', instance.pickupReadyDt);
  writeNotNull('pickup_deadline_dt', instance.pickupDeadlineDt);
  writeNotNull('dropoff_ready_dt', instance.dropoffReadyDt);
  writeNotNull('dropoff_deadline_dt', instance.dropoffDeadlineDt);
  writeNotNull('pickup_phone_number', instance.pickupPhoneNumber);
  writeNotNull('dropoff_phone_number', instance.dropoffPhoneNumber);
  writeNotNull('manifest_total_value', instance.manifestTotalValue);
  writeNotNull('external_store_id', instance.externalStoreId);
  return val;
}

CreateQuoteResponse _$CreateQuoteResponseFromJson(Map<String, dynamic> json) =>
    CreateQuoteResponse(
      kind: json['kind'] as String?,
      id: json['id'] as String?,
      created: json['created'] as String?,
      expires: json['expires'] as String?,
      fee: json['fee'] as int?,
      currencyType: json['currency_type'] as String?,
      dropoffEta: json['dropoff_eta'] as String?,
      duration: json['duration'] as int?,
      pickupDuration: json['pickup_duration'] as int?,
      dropoffDeadline: json['dropoff_deadline'] as String?,
    );

Map<String, dynamic> _$CreateQuoteResponseToJson(CreateQuoteResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('kind', instance.kind);
  writeNotNull('id', instance.id);
  writeNotNull('created', instance.created);
  writeNotNull('expires', instance.expires);
  writeNotNull('fee', instance.fee);
  writeNotNull('currency_type', instance.currencyType);
  writeNotNull('dropoff_eta', instance.dropoffEta);
  writeNotNull('duration', instance.duration);
  writeNotNull('pickup_duration', instance.pickupDuration);
  writeNotNull('dropoff_deadline', instance.dropoffDeadline);
  return val;
}
