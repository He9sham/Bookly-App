import 'package:dio/dio.dart';

class ApiService {
  final _baseurl = 'https://www.googleapis.com/books/v1/';
  final _apikey = '&key=AIzaSyCUgRezci_mxn4gOHrnMxWt7wGAgeRIk0o';
  final Dio _dio;
  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endpoints}) async {
    var response = await _dio.get('$_baseurl$endpoints$_apikey');
    return response.data;
  }
}
