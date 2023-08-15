// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_delivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateDeliveryRequest _$CreateDeliveryRequestFromJson(
        Map<String, dynamic> json) =>
    CreateDeliveryRequest(
      pickupName: json['pickup_name'] as String,
      pickupAddress: json['pickup_address'] as String,
      pickupPhoneNumber: json['pickup_phone_number'] as String,
      dropoffName: json['dropoff_name'] as String,
      dropoffAddress: json['dropoff_address'] as String,
      dropoffPhoneNumber: json['dropoff_phone_number'] as String,
      manifestItems: (json['manifest_items'] as List<dynamic>)
          .map((e) => ManifestItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pickupBusinessName: json['pickup_business_name'] as String?,
      pickupLatitude: json['pickup_latitude'] as num?,
      pickupLongitude: json['pickup_longitude'] as num?,
      pickupNotes: json['pickup_notes'] as String?,
      pickupVerification: json['pickup_verification'] == null
          ? null
          : PickupVerificationRequirement.fromJson(
              json['pickup_verification'] as Map<String, dynamic>),
      dropoffBusinessName: json['dropoff_business_name'] as String?,
      dropoffLatitude: json['dropoff_latitude'] as num?,
      dropoffLongitude: json['dropoff_longitude'] as num?,
      dropoffNotes: json['dropoff_notes'] as String?,
      dropoffSellerNotes: json['dropoff_seller_notes'] as String?,
      dropoffVerification: json['dropoff_verification'] == null
          ? null
          : DropoffVerificationRequest.fromJson(
              json['dropoff_verification'] as Map<String, dynamic>),
      deliverableAction: $enumDecodeNullable(
          _$DeliverableActionEnumMap, json['deliverable_action']),
      manifestReference: json['manifest_reference'] as String?,
      manifestTotalValue: json['manifest_total_value'] as int?,
      quoteId: json['quote_id'] as String?,
      undeliverableAction: $enumDecodeNullable(
          _$UndeliverableActionEnumMap, json['undeliverable_action']),
      pickupReadyDt: json['pickup_ready_dt'] as String?,
      pickupDeadlineDt: json['pickup_deadline_dt'] as String?,
      dropoffReadyDt: json['dropoff_ready_dt'] as String?,
      dropoffDeadlineDt: json['dropoff_deadline_dt'] as String?,
      requiresDropoffSignature: json['requires_dropoff_signature'] as bool?,
      requiresId: json['requires_id'] as bool?,
      tip: json['tip'] as int?,
      idempotencyKey: json['idempotency_key'] as String?,
      externalStoreId: json['external_store_id'] as String?,
      returnVerification: json['return_verification'] == null
          ? null
          : ReturnVerificationRequirement.fromJson(
              json['return_verification'] as Map<String, dynamic>),
      externalUserInfo: json['external_user_info'] == null
          ? null
          : ExternalUserInfo.fromJson(
              json['external_user_info'] as Map<String, dynamic>),
      externalId: json['external_id'] as String?,
    );

Map<String, dynamic> _$CreateDeliveryRequestToJson(
    CreateDeliveryRequest instance) {
  final val = <String, dynamic>{
    'pickup_name': instance.pickupName,
    'pickup_address': instance.pickupAddress,
    'pickup_phone_number': instance.pickupPhoneNumber,
    'dropoff_name': instance.dropoffName,
    'dropoff_address': instance.dropoffAddress,
    'dropoff_phone_number': instance.dropoffPhoneNumber,
    'manifest_items': instance.manifestItems.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pickup_business_name', instance.pickupBusinessName);
  writeNotNull('pickup_latitude', instance.pickupLatitude);
  writeNotNull('pickup_longitude', instance.pickupLongitude);
  writeNotNull('pickup_notes', instance.pickupNotes);
  writeNotNull('pickup_verification', instance.pickupVerification?.toJson());
  writeNotNull('dropoff_business_name', instance.dropoffBusinessName);
  writeNotNull('dropoff_latitude', instance.dropoffLatitude);
  writeNotNull('dropoff_longitude', instance.dropoffLongitude);
  writeNotNull('dropoff_notes', instance.dropoffNotes);
  writeNotNull('dropoff_seller_notes', instance.dropoffSellerNotes);
  writeNotNull('dropoff_verification', instance.dropoffVerification?.toJson());
  writeNotNull('deliverable_action',
      _$DeliverableActionEnumMap[instance.deliverableAction]);
  writeNotNull('manifest_reference', instance.manifestReference);
  writeNotNull('manifest_total_value', instance.manifestTotalValue);
  writeNotNull('quote_id', instance.quoteId);
  writeNotNull('undeliverable_action',
      _$UndeliverableActionEnumMap[instance.undeliverableAction]);
  writeNotNull('pickup_ready_dt', instance.pickupReadyDt);
  writeNotNull('pickup_deadline_dt', instance.pickupDeadlineDt);
  writeNotNull('dropoff_ready_dt', instance.dropoffReadyDt);
  writeNotNull('dropoff_deadline_dt', instance.dropoffDeadlineDt);
  writeNotNull('requires_dropoff_signature', instance.requiresDropoffSignature);
  writeNotNull('requires_id', instance.requiresId);
  writeNotNull('tip', instance.tip);
  writeNotNull('idempotency_key', instance.idempotencyKey);
  writeNotNull('external_store_id', instance.externalStoreId);
  writeNotNull('return_verification', instance.returnVerification?.toJson());
  writeNotNull('external_user_info', instance.externalUserInfo?.toJson());
  writeNotNull('external_id', instance.externalId);
  return val;
}

const _$DeliverableActionEnumMap = {
  DeliverableAction.deliverableActionMeetAtDoor:
      'deliverable_action_meet_at_door',
  DeliverableAction.deliverableActionLeaveAtDoor:
      'deliverable_action_leave_at_door',
};

const _$UndeliverableActionEnumMap = {
  UndeliverableAction.leaveAtDoor: 'leave_at_door',
  UndeliverableAction.returnToPickup: 'return',
  UndeliverableAction.discard: 'discard',
};

CreateDeliveryResponse _$CreateDeliveryResponseFromJson(
        Map<String, dynamic> json) =>
    CreateDeliveryResponse(
      id: json['id'] as String?,
      quoteId: json['quote_id'] as String?,
    );

Map<String, dynamic> _$CreateDeliveryResponseToJson(
    CreateDeliveryResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('quote_id', instance.quoteId);
  return val;
}
