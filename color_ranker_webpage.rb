# app logic, routes, and controllers

require 'sinatra'
require './color_ranker'

set :public_folder, 'public'

# Route to render main page with random color
get '/' do
    @hex_color = generate_random_hex_color
    erb :index
    # send_file File.join(settings.public_folder, 'index.html')
end

# Route to return new random color when button is clicked

