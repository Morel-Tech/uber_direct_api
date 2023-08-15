// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barcode_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BarcodeRequirement _$BarcodeRequirementFromJson(Map<String, dynamic> json) =>
    BarcodeRequirement(
      value: json['value'] as String?,
      type: $enumDecodeNullable(_$BarcodeRequirementTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$BarcodeRequirementToJson(BarcodeRequirement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('type', _$BarcodeRequirementTypeEnumMap[instance.type]);
  return val;
}

const _$BarcodeRequirementTypeEnumMap = {
  BarcodeRequirementType.code39: 'CODE39',
  BarcodeRequirementType.code39FullAscii: 'CODE39_FULL_ASCII',
  BarcodeRequirementType.code128: 'CODE128',
  BarcodeRequirementType.qr: 'QR',
};
