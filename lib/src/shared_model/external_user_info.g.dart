// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalUserInfo _$ExternalUserInfoFromJson(Map<String, dynamic> json) =>
    ExternalUserInfo(
      merchantAccount: json['merchant_account'] == null
          ? null
          : ExternalUserInfoMerchantAccount.fromJson(
              json['merchant_account'] as Map<String, dynamic>),
      device: json['device'] == null
          ? null
          : ExternalUserInfoDevice.fromJson(
              json['device'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExternalUserInfoToJson(ExternalUserInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('merchant_account', instance.merchantAccount?.toJson());
  writeNotNull('device', instance.device?.toJson());
  return val;
}
