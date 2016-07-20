require 'rubygems'
require 'bundler'
Bundler.require

#THIS IS THE MODEL
require './models/user'

#THIS IS THE CONTROLLER
require './app'

#Class refers to the class name in app.rb
run RedmartSinatraApp
