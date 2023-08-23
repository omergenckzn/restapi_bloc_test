import 'dart:io';

import 'package:dio/dio.dart';
import 'package:restapi_bloc_test/models/city_model.dart';

class CityInfoApi extends ICityInfo {
  //Get Set the base url
  String baseUrl = "http://192.168.1.41:7021/api";
  final Dio _dio;

  CityInfoApi(Dio dio) : _dio = dio;

  @override
  Future<List<CityModel>?> getCities() async {
    final endpoint = "$baseUrl/cities";
    try {
      var response = await _dio.get(
        endpoint,
      );
      List<CityModel> cityModelList = [];

      if (response.statusCode == HttpStatus.ok) {
        for (var city in response.data) {
          cityModelList.add(CityModel.fromJson(city));
        }
        return cityModelList;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  @override
  Future<CityModel?> getCity(int cityId) async {
    final endpoint = "$baseUrl/cities/$cityId";

    var response = await _dio.get(endpoint);

    if(response.statusCode == 200) {
      return CityModel.fromJson(response.data);
    } else {
      return null;
    }
  }

  @override
  void getPointOfInterests(int cityId) {
    // TODO: implement getPointOfInterests
  }
}

abstract class ICityInfo {
  Future<List<CityModel>?> getCities();
  Future<CityModel?> getCity(int cityId);
  void getPointOfInterests(int cityId);
}
