import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_access_token.g.dart';

@JsonSerializable()
class GetAccessTokenResponse extends Equatable {
  const GetAccessTokenResponse({
    required this.accessToken,
    required this.expiresIn,
    required this.tokenType,
    required this.scope,
  });

  /// Converts a [Map] to an [GetAccessTokenResponse]
  factory GetAccessTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAccessTokenResponseFromJson(json);

  /// Converts a [GetAccessTokenResponse] to a [Map]
  Map<String, dynamic> toJson() => _$GetAccessTokenResponseToJson(this);

  final String accessToken;
  final int expiresIn;
  final String tokenType;
  final String scope;

  @override
  List<Object> get props => [accessToken, expiresIn, tokenType, scope];
}
