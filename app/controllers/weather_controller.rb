class WeatherController < ApplicationController
    require 'open-uri'

    def get_weather

    end

    def cities
        render json: City.where('country = ?', params[:id]).select(:city_id, :name)
    end

    def post_weather

        url = "https://api.openweathermap.org/data/2.5/weather?id=#{params[:city_id]}&units=metric&appid=20949cda7f53f50dad0e100bd1807072"       
        contents = open(url).read
        @parsed_json = JSON.parse(contents)
        render json: @parsed_json
    end
end
