import 'package:dio/dio.dart';

class AppServices {
  Dio dio = new Dio();
  Response response;

  Future<dynamic> loginDoctor(String email,String password)async {

    var header = {
      "Accept": "application/json",
      "Content-Type": "application/x-www-form-urlencoded"
    };
    var body = {"email": email, "password": password};

    try {
      response = await dio.post(("http://www.clinicapi.somee.com/" + 'api/doctors/Login'),
          data: body, options: Options(headers: header));

      return response.data;
    } on DioError catch (e) {
      print(e.response);
    }
  }
}