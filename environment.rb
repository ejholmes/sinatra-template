require 'bundler/setup'
Bundler.require :default
require "sprockets"
require "sprockets-sass"
require "sass"
require "compass"

configure :production do
  Bundler.require :production

  use Rack::Cache
  set :cache, Dalli::Client.new
  set :enable_cache, true
  set :short_ttl, 400
  set :long_ttl, 4600
end
