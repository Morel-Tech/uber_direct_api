import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'external_user_info_merchant_account.g.dart';

@JsonSerializable()
class ExternalUserInfoMerchantAccount extends Equatable {
  const ExternalUserInfoMerchantAccount({
    this.accountCreatedAt,
    this.email,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [ExternalUserInfoMerchantAccount]
  factory ExternalUserInfoMerchantAccount.fromJson(Map<String, dynamic> json) =>
      _$ExternalUserInfoMerchantAccountFromJson(json);

  /// Converts a [ExternalUserInfoMerchantAccount] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() =>
      _$ExternalUserInfoMerchantAccountToJson(this);

  /// (RFC 3339) End-user's Account creation time.
  final String? accountCreatedAt;

  /// (RFC 3339) End-user's email used to create the account.
  final String? email;

  @override
  List<Object?> get props => [accountCreatedAt, email];
}
