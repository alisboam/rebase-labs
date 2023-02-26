require './app.rb'
require 'logger'
require './model/exam.rb'

log = Logger.new(STDOUT)

if Exam.count == 0
  Exam.load_from_csv("./data.csv")
	log.info('Data copied into db')
end

Rack::Handler::Puma.run(
  Sinatra::Application,
  Port: 3000,
  Host: '0.0.0.0'
)