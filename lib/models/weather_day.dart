class WeatherDay {
  WeatherDay({
    required this.dayName,
    required this.icon,
    required this.degrees,
    required this.locationName,
    required this.weatherDescription,
  });

  final String dayName; // день недели
  final String icon; // путь до картинки, например Images.ic02d
  final String degrees; // количество градусов
  final String locationName; // название города населенного пункта
  final String
      weatherDescription; // какоя погода в этот день, например Солнечно
}
