module Api
  module V1
    class WeatherForecastsController < ApplicationController
      def index
        api_key = ENV['open_weather_api_key']
        city_name = params[:city_name]
        response = HTTParty.get("https://api.openweathermap.org/data/2.5/weather?q=#{city_name}&appid=#{api_key}&units=metric")
        data = JSON.parse(response.body)
        render json: {
          temperature: data['main']['temp'],
          description: data['weather'][0]['description']
        }
      end
    end
  end
end
