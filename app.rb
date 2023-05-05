# frozen_string_literal: true

require 'sinatra'
require 'sinatra-contrib'
require 'sinatra/activerecord'
require 'dotenv'

Dotenv.load

require './app/model/adpters/controllers/users_controllers'

set :database, { adapter: 'sqlite3', database: ENV['DB_PATH'] }

post '/users' do
  { result: UsersController.create(params) }.to_json
end
