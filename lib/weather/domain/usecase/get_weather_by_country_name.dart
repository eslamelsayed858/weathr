import 'package:pr_mvvm/weather/domain/entities/weather.dart';
import 'package:pr_mvvm/weather/domain/repository/base_weather_repository.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepository repository;

  GetWeatherByCountryName(this.repository);

  Future<Weather> execute(String cityName) async {
    return await repository.getWeatherByCityName(cityName);
  }
}
