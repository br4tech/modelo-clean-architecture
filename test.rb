require 'sinatra'
require 'sinatra/activerecord'
require 'dotenv'

Dotenv.load

set :database, { adapter: 'sqlite3', database: ENV['DB_PATH'] }

require './app/model/adpters/repositories/user_repository.rb'

UserRepository.create(name: 'Guilherme Silva')

# UserRepository.find(1)