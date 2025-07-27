abstract class Baseapiservices {
  Future<dynamic> getApiResponse(String url);

  Future<dynamic> getPostApiResponse(String url, dynamic data);
}