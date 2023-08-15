import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uber_direct_api/uber_direct_api.dart';

part 'pickup_verification_requirement.g.dart';

@JsonSerializable()
class PickupVerificationRequirement extends Equatable {
  const PickupVerificationRequirement({
    this.signatureRequirement,
    this.barcodes,
    this.identification,
    this.picture,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [PickupVerificationRequirement]
  factory PickupVerificationRequirement.fromJson(Map<String, dynamic> json) =>
      _$PickupVerificationRequirementFromJson(json);

  /// Converts a [PickupVerificationRequirement] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$PickupVerificationRequirementToJson(this);

  /// Signature requirement spec to indicate that a signature must be collected
  /// at this waypoint.
  final SignatureRequirement? signatureRequirement;

  /// Barcode values/types that must be scanned at the waypoint. Number of
  /// elements in the array is equal to the number of barcodes that must be
  /// scanned.
  final List<BarcodeRequirement>? barcodes;

  /// Identification scanning/verification requirements for this waypoint.
  final IdentificationRequirement? identification;

  /// Identification scanning/verification requirements for this waypoint.
  final bool? picture;

  @override
  List<Object?> get props {
    return [
      signatureRequirement,
      barcodes,
      identification,
      picture,
    ];
  }
}
