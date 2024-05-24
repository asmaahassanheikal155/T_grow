import 'package:dio/dio.dart';


class DioHelper {
  final _dio = Dio(BaseOptions(baseUrl: "https://graduation-project-api.runasp.net/"));

  Future<CustomResponse?> sendData(String endPoint,
      {Map<String, dynamic>? data}) async {
    _dio.options.headers = {
      //"Authorization": "Bearer ${CacheHelper.getUserToken()}"
    };
    print("(Post) https://graduation-project-api.runasp.net/$endPoint");
    print("Data $data");
    print("Header ${_dio.options.headers}");
    try {
      var response = await _dio.post(endPoint, data: data);
      print(response.data["message"]);
      return CustomResponse(
          message:"",
          isSuccess: true,
          response: response);
    } on DioException catch (ex) {
      print(ex.response?.data);
      String msg;
      try {
        msg = ex.response?.data["message"];
      } catch (ex) {
        msg = "something wrong";
      }
      return CustomResponse(
        message: "msg",
        isSuccess: false,
        response: ex.response,
      );
    }
  }


}


class CustomResponse {
  late final String message;
  late final bool isSuccess;
  late final Response? response;

  CustomResponse({
    required this.message,
    required this.isSuccess,
    required this.response,
  });
}
