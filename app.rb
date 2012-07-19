set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, "views"

get '/' do
  erb :index
end
