import 'package:course_app/shared/componentes/components.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio;

  DioHelper() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://softagic.wwwnl1-ss19.a2hosted.com/',
        headers: {
          'Accept': 'application/json',
        },
      ),
    );
  }

  static Future<Response> postData({
    path,
    data,
    token,
    searchKey,
  }) async {
    if (searchKey==1 ) {
      dio.options.headers = {
        'Content-Type': 'multipart/form-data; boundary=<calculated when request is sent>',
        'Content-Length': '<calculated when request is sent>',
        'Host': '<calculated when request is sent>',
        'User-Agent': 'PostmanRuntime/7.26.8',
        'Accept-Encoding': 'gzip, deflate, br',
        'Accept': '*/*',
        'Connection': 'keep-alive',
        'Cookie':'nourcenters_session=11iINrsWJjA714ilvYsmA8zPwtQUfarRr5EUKf40',
        'Postman-Token':'<calculated when request is sent>',
      };
    }
    if (token != null) {
      dio.options.headers = {'Authorization': 'Bearer ${token}'};
    }
    return await dio.post(
      path,
      data: data ?? null,
    );
  }
}
