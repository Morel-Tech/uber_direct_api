import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uber_direct_api/uber_direct_api.dart';

part 'create_delivery.g.dart';

@JsonSerializable()
class CreateDeliveryRequest extends Equatable {
  const CreateDeliveryRequest({
    required this.pickupName,
    required this.pickupAddress,
    required this.pickupPhoneNumber,
    required this.dropoffName,
    required this.dropoffAddress,
    required this.dropoffPhoneNumber,
    required this.manifestItems,
    this.pickupBusinessName,
    this.pickupLatitude,
    this.pickupLongitude,
    this.pickupNotes,
    this.pickupVerification,
    this.dropoffBusinessName,
    this.dropoffLatitude,
    this.dropoffLongitude,
    this.dropoffNotes,
    this.dropoffSellerNotes,
    this.dropoffVerification,
    this.deliverableAction,
    this.manifestReference,
    this.manifestTotalValue,
    this.quoteId,
    this.undeliverableAction,
    this.pickupReadyDt,
    this.pickupDeadlineDt,
    this.dropoffReadyDt,
    this.dropoffDeadlineDt,
    @Deprecated('deprecated') this.requiresDropoffSignature,
    this.requiresId,
    this.tip,
    this.idempotencyKey,
    this.externalStoreId,
    this.returnVerification,
    this.externalUserInfo,
    this.externalId,
  });

  /// Converts a [Map] to an [CreateDeliveryRequest]
  factory CreateDeliveryRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateDeliveryRequestFromJson(json);

  /// Converts a [CreateDeliveryRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CreateDeliveryRequestToJson(this);

  /// Name of the place where the courier will make the pickup.
  final String pickupName;

  /// JSON string containing pickup address details.
  final String pickupAddress;

  /// Phone number of the pickup location. Typically the store's phone number.
  final String pickupPhoneNumber;

  /// Name of the place where the courier will make the dropoff.
  final String dropoffName;

  /// JSON string containing dropoff address details.
  final String dropoffAddress;

  /// Phone number of the dropoff location. Typically the end-user's
  /// phone number (recipient).
  final String dropoffPhoneNumber;

  /// List of items being delivered.
  final List<ManifestItem> manifestItems;

  /// Business name of the pickup location.
  final String? pickupBusinessName;

  /// Pickup latitude coordinate.
  final num? pickupLatitude;

  /// Pickup longitude coordinate.
  final num? pickupLongitude;

  /// Additional instructions for the courier at the pickup location.
  /// Max 280 characters.
  final String? pickupNotes;

  final PickupVerificationRequirement? pickupVerification;

  /// Business name of the dropoff location.
  final String? dropoffBusinessName;

  /// Dropoff latitude coordinate. This field adds precision to dropoff_address
  /// field. For example, if the dropoff address is "JFK Airport Queens, NY
  /// 11430", it would be highly recommended to use coordinates to locate the
  /// precise location of the dropoff
  final num? dropoffLatitude;

  /// Dropoff longitude coordinate. This field adds precision to dropoff_address
  ///  field. For example, if the dropoff address is "JFK Airport Queens, NY
  /// 11430", it would be highly recommended to use coordinates to locate the
  /// precise location of the dropoff.
  final num? dropoffLongitude;

  /// Additional instructions for the courier at the dropoff location. Max 280
  /// characters.
  final String? dropoffNotes;

  /// Additional instructions provided by the merchant for the dropoff. Max 280
  /// characters.
  final String? dropoffSellerNotes;

  /// Verification steps (e.g. Picture, barcode scanning) that must be taken
  /// before the dropoff can be completed.
  final DropoffVerificationRequest? dropoffVerification;

  /// Specify the action for the courier to take on a delivery.
  final DeliverableAction? deliverableAction;

  /// Reference that identifies the manifest. Use this to connect a delivery to
  /// corresponding information in your system.
  final String? manifestReference;

  /// Value (in cents) of the items in the delivery. e.g.: `$10.99`
  /// becomes `1099`
  final int? manifestTotalValue;

  /// The ID of a previously generated delivery quote.
  final String? quoteId;

  /// If not set then the default value is return
  final UndeliverableAction? undeliverableAction;

  /// (RFC 3339) Beginning of the window when an order must be picked up. Must
  /// be less than 30 days in the future.
  final String? pickupReadyDt;

  /// (RFC 3339) End of the window when an order may be picked up. Must be at
  /// least 10 mins later than pickup_ready_dt and at least 20 minutes in the
  /// future from now.
  final String? pickupDeadlineDt;

  /// (RFC 3339) Beginning of the window when an order must be dropped off.
  /// Must be less than or equal to pickup_deadline_dt.
  final String? dropoffReadyDt;

  /// (RFC 3339) End of the window when an order must be dropped off. Must be at
  /// least 20 mins later than dropoff_ready_dt and must be greater than or
  /// equal to pickup_deadline_dt.
  final String? dropoffDeadlineDt;

  /// Flag to indicate this delivery requires signature capture at dropoff.
  @Deprecated('deprecated')
  final bool? requiresDropoffSignature;

  /// Flag to indicate this delivery requires ID check (minimum age) at dropoff.
  final bool? requiresId;

  /// Upfront Amount in cents that will be paid to the courier as a tip. e.g.:
  /// `$5.00` => `500`.
  final int? tip;

  /// A key which is used to avoid duplicate order creation with identical
  /// idempotency keys for the same account. The key persists for a set time
  /// frame, defaulting to 6 hours.
  final String? idempotencyKey;

  /// Unique identifier used by our Partners to reference a store or location.
  /// Please be aware that if you utilize `external_store_id` in the Create
  /// Delivery process, you MUST also include this field in your Create Quote
  /// API calls.
  final String? externalStoreId;

  /// Verification steps (barcode scanning, picture, or signature) that must be
  /// taken before the return can be completed.
  final ReturnVerificationRequirement? returnVerification;

  /// End-user's information to help identify users.
  final ExternalUserInfo? externalUserInfo;

  /// Additional reference to identify the manifest. To be used by aggregators,
  /// POS systems, and other organization structures which have an internal
  /// reference in addition to the manifest_reference used by your sub-account.
  final String? externalId;

  @override
  List<Object?> get props {
    return [
      pickupName,
      pickupAddress,
      pickupPhoneNumber,
      dropoffName,
      dropoffAddress,
      dropoffPhoneNumber,
      manifestItems,
      pickupBusinessName,
      pickupLatitude,
      pickupLongitude,
      pickupNotes,
      pickupVerification,
      dropoffBusinessName,
      dropoffLatitude,
      dropoffLongitude,
      dropoffNotes,
      dropoffSellerNotes,
      dropoffVerification,
      deliverableAction,
      manifestReference,
      manifestTotalValue,
      quoteId,
      undeliverableAction,
      pickupReadyDt,
      pickupDeadlineDt,
      dropoffReadyDt,
      dropoffDeadlineDt,
      // ignore: deprecated_member_use_from_same_package
      requiresDropoffSignature,
      requiresId,
      tip,
      idempotencyKey,
      externalStoreId,
      returnVerification,
      externalUserInfo,
      externalId,
    ];
  }
}

@JsonSerializable()
class CreateDeliveryResponse extends Equatable {
  const CreateDeliveryResponse({
    this.id,
    this.quoteId,
  });

  /// Converts a [Map] to an [CreateDeliveryResponse]
  factory CreateDeliveryResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateDeliveryResponseFromJson(json);

  /// Converts a [CreateDeliveryResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CreateDeliveryResponseToJson(this);

  /// Unique identifier for the delivery (del_ + tokenize(uuid)).
  final String? id;

  /// ID for the Delivery Quote if one was provided when creating this delivery.
  final String? quoteId;

  @override
  List<Object?> get props => [id, quoteId];
}
