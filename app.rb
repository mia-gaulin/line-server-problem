require 'sinatra'
require 'sinatra/json'
require 'bundler'
require 'pry'

Bundler.require
require_relative 'lib/line'

DataMapper.setup(:default, 'sqlite::memory:')
DataMapper.finalize
DataMapper.auto_migrate!

get '/' do
  [200, 'Hello world!']
end

get '/lines' do
  content_type :json

  @lines = File.open('public/1000.txt')
  @lines.each do |line|
    Line.create(:text => line)
  end

  lines = Line.all
  lines.to_json
end

get '/lines/:id' do
  content_type :json

  @lines = File.open('public/100.txt')
  @lines.each do |line|
    Line.create(:text => line)
  end

  line = Line.get params[:id]
  line.to_json
end
