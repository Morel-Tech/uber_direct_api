// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signature_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignatureRequirement _$SignatureRequirementFromJson(
        Map<String, dynamic> json) =>
    SignatureRequirement(
      enabled: json['enabled'] as bool?,
      collectSignerName: json['collect_signer_name'] as bool?,
      collectSignerRelationship: json['collect_signer_relationship'] as bool?,
    );

Map<String, dynamic> _$SignatureRequirementToJson(
    SignatureRequirement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('collect_signer_name', instance.collectSignerName);
  writeNotNull(
      'collect_signer_relationship', instance.collectSignerRelationship);
  return val;
}
