require 'sinatra/base'
require 'sinatra/json'
require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/cycle_time.sqlite3')

class Story < ActiveRecord::Base
end

class CycleTimeApp < Sinatra::Base
  set :public_folder, File.dirname(__FILE__) + '/public'

  get '/' do
    erb :index
  end

  get '/stories' do
    @stories = Story.all
    json stories: @stories
  end
end
