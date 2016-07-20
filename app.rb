class RedmartSinatraApp < Sinatra::Base

get '/' do
  erb 'hello world'
end

get '/users' do

  @users = User.all
  erb :'users'

end

end
