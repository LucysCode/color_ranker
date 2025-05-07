require 'sinatra'
require './color_ranker'

get '/' do
    'Welcome to Color Ranker where you can rank ugly colors!'
    @hex_color = generate_random_hex_color
    erb :index
end

def generate_random_hex_color
    "#" + "%06x" % (rand * 0xffffff)
end
