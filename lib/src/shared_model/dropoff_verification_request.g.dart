// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropoff_verification_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DropoffVerificationRequest _$DropoffVerificationRequestFromJson(
        Map<String, dynamic> json) =>
    DropoffVerificationRequest(
      signatureRequirement: json['signature_requirement'] == null
          ? null
          : SignatureRequirement.fromJson(
              json['signature_requirement'] as Map<String, dynamic>),
      barcodes: (json['barcodes'] as List<dynamic>?)
          ?.map((e) => BarcodeRequirement.fromJson(e as Map<String, dynamic>))
          .toList(),
      pincode: json['pincode'] == null
          ? null
          : PincodeRequest.fromJson(json['pincode'] as Map<String, dynamic>),
      identification: json['identification'] == null
          ? null
          : IdentificationRequirement.fromJson(
              json['identification'] as Map<String, dynamic>),
      picture: json['picture'] as bool?,
    );

Map<String, dynamic> _$DropoffVerificationRequestToJson(
    DropoffVerificationRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'signature_requirement', instance.signatureRequirement?.toJson());
  writeNotNull('barcodes', instance.barcodes?.map((e) => e.toJson()).toList());
  writeNotNull('pincode', instance.pincode?.toJson());
  writeNotNull('identification', instance.identification?.toJson());
  writeNotNull('picture', instance.picture);
  return val;
}
