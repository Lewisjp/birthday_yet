require './lib/index.rb'
require 'bundler'
Bundler.require

module Game
  class AVM_App < Sinatra::Application
	get '/' 
	erb :index


  end
end