// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uber_authentication_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _UberAuthenticationApi implements UberAuthenticationApi {
  _UberAuthenticationApi(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://login.uber.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<GetAccessTokenResponse> getAccessToken({
    required String clientId,
    required String clientSecret,
    required String grantType,
    required String scope,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'grantType': grantType,
      'scope': scope,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetAccessTokenResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              '/oauth/v2/token',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = GetAccessTokenResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
