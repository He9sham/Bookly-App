import 'package:dio/dio.dart';

class ApiService {
  final _baseurl = 'https://www.googleapis.com/books/v1/';
  final apikey = 'AIzaSyCUgRezci_mxn4gOHrnMxWt7wGAgeRIk0o';
  final Dio dio;
  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endpoints}) async {
    var response = await dio.get('$_baseurl$endpoints$apikey');
    return response.data;
  }
}
