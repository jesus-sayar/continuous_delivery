require 'sinatra/base'
require './lib/bot'

class SimpleApp < Sinatra::Base
  get '/' do
    'Welcome to Simple App ;-)'
  end

  get '/hi' do
		Bot.new.greet
  end

  get '/hi/:username' do
  	@bot = Bot.new
  	@bot.greet(params[:username])
  end

  get '/goodbye' do
		Bot.new.say_goodbye
	end

  get '/goodbye/:username' do
   	@bot = Bot.new
  	@bot.say_goodbye(params[:username])
	end
end