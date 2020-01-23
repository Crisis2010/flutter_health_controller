import 'package:dio/dio.dart';

class RequestEdamam {
  final String baseUrl = 'api.edamam.com';

  Map<String, String> cookies = {};
  Map<String, String> defaultBody = {};
  // Map<String, String> defaultHeaders = {'Authorization': '563492ad6f91700001000001216f5fa60c504537918d967f8f76edf1'};
  Map<String, String> defaultHeaders = {};
  Map<String, String> defaultParams = {};

  Map<String, String> getHeaders([Map<String, String> headers]) {
    if (headers == null) headers = {};
    return headers..addAll(defaultHeaders);
  }

  Map<String, String> getParams(String path, [Map<String, String> params]) {
    if (params == null) params = {};
    return params
      ..addAll(defaultParams)
      ..putIfAbsent('route', () => path);
  }

  Future<Response<dynamic>> get(String path, {Map<String, String> params, Map<String, String> headers}) async {
    final queryParameters = getParams(path, params);
    final uri = Uri.https(baseUrl, path, queryParameters);

    final Dio dio = Dio(BaseOptions(headers: headers));
    Response<dynamic> response = await dio.get(uri.toString());

    print(response.data);
    return response;
  }

  Future<Response<dynamic>> post(String path, {Map<String, String> headers, Map<String, String> params, Map<String, String> data}) async {
    final queryParameters = getParams(path, params);
    final uri = Uri.https(baseUrl, path, queryParameters);

    final Dio dio = Dio(BaseOptions(headers: headers));
    FormData formData = FormData.fromMap(data);
    Response<dynamic> response = await dio.post(uri.toString(), data: formData);

    print(response.data);
    return response;
  }
}
