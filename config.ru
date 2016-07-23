require 'rubygems'
require 'bundler'
Bundler.require

#THIS IS THE MODEL
require './models/user' #.erb is not needed
require './models/product'
require './models/brand'
require './models/category'

#THIS IS THE CONTROLLER
require './app'

# ALLOW DELETE AND PUT REQUEST
use Rack::MethodOverride

#Class refers to the class name in app.rb
run RedmartSinatraApp
