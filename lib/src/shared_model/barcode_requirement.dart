import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uber_direct_api/uber_direct_api.dart';

part 'barcode_requirement.g.dart';

@JsonSerializable()
class BarcodeRequirement extends Equatable {
  const BarcodeRequirement({
    this.value,
    this.type,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [BarcodeRequirement]
  factory BarcodeRequirement.fromJson(Map<String, dynamic> json) =>
      _$BarcodeRequirementFromJson(json);

  /// Converts a [BarcodeRequirement] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$BarcodeRequirementToJson(this);

  /// String value encoded in the barcode.
  final String? value;

  /// Type of barcode.
  final BarcodeRequirementType? type;

  @override
  List<Object?> get props => [value, type];
}
