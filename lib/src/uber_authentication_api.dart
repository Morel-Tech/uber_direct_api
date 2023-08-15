import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uber_direct_api/uber_direct_api.dart';

part 'uber_authentication_api.g.dart';

@RestApi(baseUrl: 'https://login.uber.com')
abstract class UberAuthenticationApi {
  /// {@macro uber_direct_api}
  factory UberAuthenticationApi() => _UberAuthenticationApi(Dio());

  @POST('/oauth/v2/token')
  @FormUrlEncoded()
  Future<GetAccessTokenResponse> getAccessToken({
    @Field() required String clientId,
    @Field() required String clientSecret,
    @Field() required String grantType,
    @Field() required String scope,
  });
}
