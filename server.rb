require './app.rb'
require 'logger'
require './model/exam.rb'

log = Logger.new(STDOUT)

Exam.load_from_csv("./data.csv")

log.info('Data copied into db')

Rack::Handler::Puma.run(
  Sinatra::Application,
  Port: 3000,
  Host: '0.0.0.0'
)