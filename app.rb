require './lib/avm.rb'
require 'bundler'
Bundler.require

#module Game
class AVM_App < Sinatra::Application

	get '/' do
		erb :index
  	end

	get '/:form_type' do
	  erb params[:form_type].to_sym
	end

	post '/:form_type' do
	   erb :avm
	end

	post '/avm' do
		@answer = params["question"]
		@results = AVM.new(answer)
		erb :avm
	end

end