require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/namespace'
require 'rack/handler/puma'
require 'csv'
require 'postgres-copy'
require 'logger'

set :database, {adapter: 'postgresql',  encoding: 'unicode', host: 'db', database: 'postgres', pool: 2, username: 'postgres', password: 'postgres'}

log = Logger.new(STDOUT)

get '/api/v1/exams' do
  return Exam.all.to_json
end

get '/hello' do
  'Hello world!'
end
