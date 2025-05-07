require 'sinatra'
require './color_ranker'

get '/' do
    @hex_color = generate_random_hex_color
    erb :index
end

