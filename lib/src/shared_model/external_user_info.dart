import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uber_direct_api/uber_direct_api.dart';

part 'external_user_info.g.dart';

@JsonSerializable()
class ExternalUserInfo extends Equatable {
  const ExternalUserInfo({
    this.merchantAccount,
    this.device,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [ExternalUserInfo]
  factory ExternalUserInfo.fromJson(Map<String, dynamic> json) =>
      _$ExternalUserInfoFromJson(json);

  /// Converts a [ExternalUserInfo] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$ExternalUserInfoToJson(this);

  final ExternalUserInfoMerchantAccount? merchantAccount;

  final ExternalUserInfoDevice? device;

  @override
  List<Object?> get props => [merchantAccount, device];
}
