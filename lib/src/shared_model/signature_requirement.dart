import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'signature_requirement.g.dart';

@JsonSerializable()
class SignatureRequirement extends Equatable {
  const SignatureRequirement({
    this.enabled,
    this.collectSignerName,
    this.collectSignerRelationship,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [SignatureRequirement]
  factory SignatureRequirement.fromJson(Map<String, dynamic> json) =>
      _$SignatureRequirementFromJson(json);

  /// Converts a [SignatureRequirement] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$SignatureRequirementToJson(this);

  /// Flag for if a signature is required at this waypoint.
  final bool? enabled;

  /// Flag for if the signer's name is required at this waypoint.
  final bool? collectSignerName;

  /// Flag for if the signer's relationship to the intended recipient is
  /// required at this waypoint.
  final bool? collectSignerRelationship;

  @override
  List<Object?> get props => [
        enabled,
        collectSignerName,
        collectSignerRelationship,
      ];
}
