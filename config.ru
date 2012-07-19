require File.join(File.dirname(__FILE__), 'environment.rb')
require File.join(File.dirname(__FILE__), 'app.rb')

map "/assets" do
  environment = Sprockets::Environment.new
  %w(assets vendor/assets).each do |path|
    environment.append_path "#{path}/stylesheets"
    environment.append_path "#{path}/javascripts"
    environment.append_path "#{path}/images"
  end
  run environment
end

run Sinatra::Application
