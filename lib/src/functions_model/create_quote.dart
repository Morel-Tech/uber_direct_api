// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_quote.g.dart';

@JsonSerializable()
class CreateQuoteRequest extends Equatable {
  const CreateQuoteRequest({
    required this.pickupAddress,
    required this.dropoffAddress,
    this.pickupLatitude,
    this.pickupLongitude,
    this.dropoffLatitude,
    this.dropoffLongitude,
    this.pickupReadyDt,
    this.pickupDeadlineDt,
    this.dropoffReadyDt,
    this.dropoffDeadlineDt,
    this.pickupPhoneNumber,
    this.dropoffPhoneNumber,
    this.manifestTotalValue,
    this.externalStoreId,
  });

  /// Converts a [Map] to an [CreateQuoteRequest]
  factory CreateQuoteRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateQuoteRequestFromJson(json);

  /// Converts a [CreateQuoteRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CreateQuoteRequestToJson(this);

  /// Pickup address in Street Address, City, State, Zip format.
  final String pickupAddress;

  /// Dropoff address in Street Address, City, State, Zip format.
  final String dropoffAddress;

  /// Pickup latitude coordinate.
  final num? pickupLatitude;

  /// Pickup longitude coordinate.
  final num? pickupLongitude;

  /// Dropoff latitude coordinate.
  final num? dropoffLatitude;

  /// Dropoff longitude coordinate.
  final num? dropoffLongitude;

  /// (RFC 3339) Beginning of the window when an order must be picked up.
  /// Must be less than 30 days in the future.
  final String? pickupReadyDt;

  /// (RFC 3339) End of the window when an order may be picked up. Must be at
  /// least 10 mins later than pickup_ready_dt and at least 20 minutes in the
  /// future from now.
  final String? pickupDeadlineDt;

  /// (RFC 3339) Beginning of the window when an order must be dropped off.
  /// Must be less than or equal to pickup_deadline_dt.
  final String? dropoffReadyDt;

  /// (RFC 3339) End of the window when an order must be dropped off. Must be
  /// at least 20 mins later than dropoff_ready_dt and must be greater than or
  /// equal to pickup_deadline_dt.
  final String? dropoffDeadlineDt;

  /// Phone number of the pickup location. Typically the store's phone number
  final String? pickupPhoneNumber;

  /// Phone number of the dropoff location. Typically the end-user's phone
  /// number (recipient)
  final String? dropoffPhoneNumber;

  /// Value (in cents) of the items in the delivery. e.g.: `$10.99` => `1099`.
  final int? manifestTotalValue;

  /// Unique identifier used by our Partners to reference a Store or Location
  final String? externalStoreId;

  @override
  List<Object?> get props {
    return [
      pickupAddress,
      dropoffAddress,
      pickupLatitude,
      pickupLongitude,
      dropoffLatitude,
      dropoffLongitude,
      pickupReadyDt,
      pickupDeadlineDt,
      dropoffReadyDt,
      dropoffDeadlineDt,
      pickupPhoneNumber,
      dropoffPhoneNumber,
      manifestTotalValue,
      externalStoreId,
    ];
  }
}

@JsonSerializable()
class CreateQuoteResponse extends Equatable {
  const CreateQuoteResponse({
    this.kind,
    this.id,
    this.created,
    this.expires,
    this.fee,
    this.currencyType,
    this.dropoffEta,
    this.duration,
    this.pickupDuration,
    this.dropoffDeadline,
  });

  /// Converts a [Map] to an [CreateQuoteResponse]
  factory CreateQuoteResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateQuoteResponseFromJson(json);

  /// Converts a [CreateQuoteResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CreateQuoteResponseToJson(this);

  /// The type of object being described. Default: `delivery_quote`
  final String? kind;

  /// Unique identifier for the quote (always starts with `dqt_`)
  final String? id;

  /// Date/Time timestamp (RFC 3339) at which the quote was created.
  final String? created;

  /// Date/Time timestamp (RFC 3339) after which the quote will no longer be
  /// accepted.
  final String? expires;

  /// Amount in cents (1/100 of currency unit) that will be charged if this
  /// delivery is created.
  final int? fee;

  /// Three-letter ISO currency code, in uppercase.
  final String? currencyType;

  /// (RFC 3339) Estimated drop-off time.
  final String? dropoffEta;

  /// Estimated minutes for this delivery to reach dropoff
  final int? duration;

  /// Estimated minutes until a courier will arrive at the pickup.
  final int? pickupDuration;

  /// When a delivery must be dropped off. This is the end of the
  /// dropoff window.
  final String? dropoffDeadline;

  @override
  List<Object?> get props {
    return [
      kind,
      id,
      created,
      expires,
      fee,
      currencyType,
      dropoffEta,
      duration,
      pickupDuration,
      dropoffDeadline,
    ];
  }
}
