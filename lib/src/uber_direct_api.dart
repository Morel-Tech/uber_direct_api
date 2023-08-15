import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uber_direct_api/uber_direct_api.dart';

part 'uber_direct_api.g.dart';

/// {@template uber_direct_api}
/// A client library for the Uber Direct API
/// {@endtemplate}
@RestApi()
abstract class UberDirectApi {
  /// {@macro uber_direct_api}
  factory UberDirectApi({
    required String accessToken,
    String baseUrl = 'https://api.uber.com/v1',
  }) =>
      _UberDirectApi(
        Dio(
          BaseOptions(
            headers: {'Authorization': 'Bearer $accessToken'},
            contentType: 'application/json',
            baseUrl: baseUrl,
          ),
        ),
      );

  @POST('/customers/{customerId}/delivery_quotes')
  Future<CreateQuoteResponse> createQuote({
    @Path() required String customerId,
    @Body() required CreateQuoteRequest request,
  });
  @POST('/customers/{customerId}/deliveries')
  Future<CreateDeliveryResponse> createDelivery({
    @Path() required String customerId,
    @Body() required CreateDeliveryRequest request,
  });
}
