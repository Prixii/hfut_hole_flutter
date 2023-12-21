import 'package:dio/dio.dart';
import 'package:hfut_hole_flutter/network/api_client.dart';

final HoleClient holeClient = HoleClient();

class HoleClient {
  Future<Response> getHoleListRequest({
    required int page,
    required int limit,
  }) async {
    var response = await httpClient.get("/hole/list", queryParameters: {
      "page": page,
      "limit": limit,
    });
    return response;
  }
}
