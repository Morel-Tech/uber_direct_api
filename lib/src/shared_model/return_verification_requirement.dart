import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uber_direct_api/uber_direct_api.dart';

part 'return_verification_requirement.g.dart';

@JsonSerializable()
class ReturnVerificationRequirement extends Equatable {
  const ReturnVerificationRequirement({
    this.barcodes,
    this.picture,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [ReturnVerificationRequirement]
  factory ReturnVerificationRequirement.fromJson(Map<String, dynamic> json) =>
      _$ReturnVerificationRequirementFromJson(json);

  /// Converts a [ReturnVerificationRequirement] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$ReturnVerificationRequirementToJson(this);

  /// Barcode values/types that must be scanned at the waypoint. Number of
  /// elements in the array is equal to the number of barcodes that must
  /// be scanned.
  final List<BarcodeRequirement>? barcodes;

  /// Picture captured at the return waypoint.
  final bool? picture;

  @override
  List<Object?> get props => [barcodes, picture];
}
