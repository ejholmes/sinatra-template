require 'bundler/setup'
Bundler.require :default, :test
require 'capybara/rspec'
require File.join(File.dirname(__FILE__), '../app.rb')

Capybara.app = Sinatra::Application
