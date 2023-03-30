import 'package:pr_mvvm/weather/data/datasource/remote_data_source.dart';
import 'package:pr_mvvm/weather/domain/entities/weather.dart';
import 'package:pr_mvvm/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseremoteDataSource;

  WeatherRepository(this.baseremoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String countryName) async {
    return (await baseremoteDataSource.getWeatherByCountryName(countryName))!;
  }
}
