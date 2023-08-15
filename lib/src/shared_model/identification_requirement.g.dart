// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identification_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdentificationRequirement _$IdentificationRequirementFromJson(
        Map<String, dynamic> json) =>
    IdentificationRequirement(
      minAge: json['min_age'] as num?,
    );

Map<String, dynamic> _$IdentificationRequirementToJson(
    IdentificationRequirement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('min_age', instance.minAge);
  return val;
}
