import 'package:dio/dio.dart';

class CityInfoApi extends ICityInfo{

  //Get Set the base url
  String baseUrl = "LOCALHOST";
  final Dio _dio;


  CityInfoApi(Dio dio) : _dio = dio ;

  @override
  void getCities() {
    // TODO: implement getCities
  }

  @override
  void getCity(int cityId) {
   var response = _dio.get("$baseUrl/api/cities");
   print(response);
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