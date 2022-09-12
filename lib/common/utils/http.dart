import 'package:dio/dio.dart';

class HttpUtil {
  static final Dio _dio = Dio();

  static Future<String> getPage(String url) async {
    Response resp = await _dio.get(url);
    return resp.data;
  }

}