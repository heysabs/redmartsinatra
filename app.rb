class RedmartSinatraApp < Sinatra::Base

get '/' do
  erb 'hello world'
end

get '/users' do

  @users = User.all
  erb :'users'

end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'each_user'
end

get '/about' do

  erb '<h3>about redmart. it is not blue</h3>'

end

end
