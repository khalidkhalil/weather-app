Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root "weather#get_weather"
get "weather/post_weather" => "weather#post_weather"
get "weather/cities" => "weather#cities"

end


