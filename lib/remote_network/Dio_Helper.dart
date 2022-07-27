import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio = Dio();

  static init() {
    print('dioHelper Initialized');
    dio = Dio(BaseOptions(
        baseUrl: 'https://petology.orangedigitalcenteregypt.com',
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type': 'application/json',
        }));
  }

  static Future<Response> postdata({
    required String url,
    Map<String, dynamic>? quary,
    required Map<String, dynamic> data,
  }) async {
    return dio.post(
      url,
      queryParameters: quary,
      data: data,
    );
  }
}
