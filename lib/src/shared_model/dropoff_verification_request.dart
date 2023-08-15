import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uber_direct_api/uber_direct_api.dart';

part 'dropoff_verification_request.g.dart';

@JsonSerializable()
class DropoffVerificationRequest extends Equatable {
  const DropoffVerificationRequest({
    this.signatureRequirement,
    this.barcodes,
    this.pincode,
    this.identification,
    this.picture,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [DropoffVerificationRequest]
  factory DropoffVerificationRequest.fromJson(Map<String, dynamic> json) =>
      _$DropoffVerificationRequestFromJson(json);

  /// Converts a [DropoffVerificationRequest] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$DropoffVerificationRequestToJson(this);

  /// Signature requirement spec to indicate that a signature must be collected
  /// at this waypoint.
  final SignatureRequirement? signatureRequirement;

  /// Barcode values/types that must be scanned at the waypoint. Number of elements in the array is equal to the number of barcodes that must be scanned.
  final List<BarcodeRequirement>? barcodes;

  final PincodeRequest? pincode;

  /// Identification scanning/verification requirements for this waypoint.
  final IdentificationRequirement? identification;

  /// When set to true, mandates the Courier to capture an image as proof of
  /// delivery.
  final bool? picture;

  @override
  List<Object?> get props {
    return [
      signatureRequirement,
      barcodes,
      pincode,
      identification,
      picture,
    ];
  }
}
