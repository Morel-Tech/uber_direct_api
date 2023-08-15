// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_verification_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnVerificationRequirement _$ReturnVerificationRequirementFromJson(
        Map<String, dynamic> json) =>
    ReturnVerificationRequirement(
      barcodes: (json['barcodes'] as List<dynamic>?)
          ?.map((e) => BarcodeRequirement.fromJson(e as Map<String, dynamic>))
          .toList(),
      picture: json['picture'] as bool?,
    );

Map<String, dynamic> _$ReturnVerificationRequirementToJson(
    ReturnVerificationRequirement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('barcodes', instance.barcodes?.map((e) => e.toJson()).toList());
  writeNotNull('picture', instance.picture);
  return val;
}
