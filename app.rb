require './lib/birthday_now.rb'
require 'bundler'
Bundler.require


class Birthday_APP < Sinatra::Application

	get '/' do
		erb :index
  	end

	post '/:form_type' do
		@results = Birthday.new(params) 
	   erb :birthday_party
	end

	post '/birthday' do 
	end


end