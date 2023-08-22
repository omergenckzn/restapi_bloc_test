import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class CityInfoApi extends ICityInfo {
  //Get Set the base url
  String baseUrl = "https://192.168.1.41";
  final Dio _dio;

  CityInfoApi(Dio dio) : _dio = dio;

  @override
  void getCities() {
    // TODO: implement getCities
  }

  @override
  void getCity(int cityId) async {
    try {
      var response = await http.get(Uri.parse("$baseUrl/api/cities"),headers: {
        'Content-Type': 'application/json',
      } );
      print(response.statusCode);
      print(response.toString());
    } catch (e) {
      print(e);
    }
  }

  @override
  void getPointOfInterests(int cityId) {
    // TODO: implement getPointOfInterests
  }
}

abstract class ICityInfo {
  void getCities();
  void getCity(int cityId);
  void getPointOfInterests(int cityId);
}
