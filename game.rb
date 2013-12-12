require './lib/hand.rb'
require 'bundler'
Bundler.require

module Game
  class AVM_App < Sinatra::Application
	get '/' do |type| 
	   	@rpsl = AVM.new(type)
	    erb :index
	end


  end
end