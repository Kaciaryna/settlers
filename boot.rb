require 'rubygems'
require 'bundler/setup'

require 'sprockets'
require 'sinatra'


set :root,  File.dirname(__FILE__)
set :views, Proc.new { File.join(root, "app/") }

get '/' do
  haml :index, :format => :html5
end