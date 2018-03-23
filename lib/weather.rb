require_relative './services/single_weather_service'
# require_relative './services/multiple_postcodes_service'

class WeatherService

  def single_weather_service
    SingleWeatherService.new
  end

end
