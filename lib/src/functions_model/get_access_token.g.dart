// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_access_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAccessTokenResponse _$GetAccessTokenResponseFromJson(
        Map<String, dynamic> json) =>
    GetAccessTokenResponse(
      accessToken: json['access_token'] as String,
      expiresIn: json['expires_in'] as int,
      tokenType: json['token_type'] as String,
      scope: json['scope'] as String,
    );

Map<String, dynamic> _$GetAccessTokenResponseToJson(
        GetAccessTokenResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'expires_in': instance.expiresIn,
      'token_type': instance.tokenType,
      'scope': instance.scope,
    };
