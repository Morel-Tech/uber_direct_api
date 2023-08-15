// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_user_info_merchant_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalUserInfoMerchantAccount _$ExternalUserInfoMerchantAccountFromJson(
        Map<String, dynamic> json) =>
    ExternalUserInfoMerchantAccount(
      accountCreatedAt: json['account_created_at'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$ExternalUserInfoMerchantAccountToJson(
    ExternalUserInfoMerchantAccount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('account_created_at', instance.accountCreatedAt);
  writeNotNull('email', instance.email);
  return val;
}
