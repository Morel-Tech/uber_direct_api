// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_user_info_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalUserInfoDevice _$ExternalUserInfoDeviceFromJson(
        Map<String, dynamic> json) =>
    ExternalUserInfoDevice(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ExternalUserInfoDeviceToJson(
    ExternalUserInfoDevice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}
