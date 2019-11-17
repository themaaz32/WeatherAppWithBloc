class WeatherModel{
  final temp;
  final pressure;
  final  humidity;
  final temp_max;
  final  temp_min;


  double get getTemp => temp-272.5;
  double get getMaxTemp => temp_max-272.5;
  double get getMinTemp=> temp_min -272.5;

  WeatherModel(this.temp, this.pressure, this.humidity, this.temp_max, this.temp_min);

  factory WeatherModel.fromJson(Map<String, dynamic> json){
    return WeatherModel(
      json["temp"],
      json["pressure"],
      json["humidity"],
      json["temp_max"],
      json["temp_min"]
    );
  }
}