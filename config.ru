require 'rubygems'
require 'bundler'
Bundler.require

#THIS IS THE MODEL
require './models/user' #.erb is not needed

#THIS IS THE CONTROLLER
require './app'

#Class refers to the class name in app.rb
run RedmartSinatraApp
