# app logic, routes, and controllers

require 'sinatra'
require './color_ranker'
require 'json' 

# Route to render main page with random color
get '/' do
    @hex_color = generate_random_hex_color
    erb :index
end

# Route to return new random color when button is clicked
get '/new_color' do
    content_type :json
    { hex_color: generate_random_hex_color }.to_json
end

