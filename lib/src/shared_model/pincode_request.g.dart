// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pincode_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PincodeRequest _$PincodeRequestFromJson(Map<String, dynamic> json) =>
    PincodeRequest(
      enabled: json['enabled'] as bool?,
    );

Map<String, dynamic> _$PincodeRequestToJson(PincodeRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  return val;
}
