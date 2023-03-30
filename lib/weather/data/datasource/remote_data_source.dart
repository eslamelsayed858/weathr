import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pr_mvvm/core/utils/constances.dart';
import 'package:pr_mvvm/weather/data/model/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
      var response = await Dio().get(
          '${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.appid}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
