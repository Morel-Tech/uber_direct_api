import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'identification_requirement.g.dart';

@JsonSerializable()
class IdentificationRequirement extends Equatable {
  const IdentificationRequirement({
    this.minAge,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [IdentificationRequirement]
  factory IdentificationRequirement.fromJson(Map<String, dynamic> json) =>
      _$IdentificationRequirementFromJson(json);

  /// Converts a [IdentificationRequirement] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$IdentificationRequirementToJson(this);

  /// Minimum age that must be verified for this delivery.
  final num? minAge;

  @override
  List<Object?> get props => [minAge];
}
