require 'sinatra'
class App < Sinatra::Base
  DESTINATION = ENV['DESTINATION'].freeze

  get "/*" do
    redirect DESTINATION, 301
  end
end
