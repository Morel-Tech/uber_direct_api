// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_verification_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickupVerificationRequirement _$PickupVerificationRequirementFromJson(
        Map<String, dynamic> json) =>
    PickupVerificationRequirement(
      signatureRequirement: json['signature_requirement'] == null
          ? null
          : SignatureRequirement.fromJson(
              json['signature_requirement'] as Map<String, dynamic>),
      barcodes: (json['barcodes'] as List<dynamic>?)
          ?.map((e) => BarcodeRequirement.fromJson(e as Map<String, dynamic>))
          .toList(),
      identification: json['identification'] == null
          ? null
          : IdentificationRequirement.fromJson(
              json['identification'] as Map<String, dynamic>),
      picture: json['picture'] as bool?,
    );

Map<String, dynamic> _$PickupVerificationRequirementToJson(
    PickupVerificationRequirement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'signature_requirement', instance.signatureRequirement?.toJson());
  writeNotNull('barcodes', instance.barcodes?.map((e) => e.toJson()).toList());
  writeNotNull('identification', instance.identification?.toJson());
  writeNotNull('picture', instance.picture);
  return val;
}
