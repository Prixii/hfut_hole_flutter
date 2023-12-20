import 'package:dio/dio.dart';
import 'package:hfut_hole_flutter/main.dart';
import 'package:hfut_hole_flutter/network/api_client.dart';

final HoleClient holeClient = HoleClient();

class HoleClient {
  Future<Response> getHoleListRequest({
    int page = 1,
    int limit = 10,
  }) async {
    var response = await httpClient.get("/hole/list", queryParameters: {
      "page": 1,
      "limit": 10,
    });
    return response;
  }
}
