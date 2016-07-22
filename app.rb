class RedmartSinatraApp < Sinatra::Base

get '/' do
  erb 'hello world'
end

#restful resources, create read update delete!

get '/users' do

  @users = User.all
  erb :'users/index'

end

get '/users/new' do
  erb :'users/new'
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end

get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end

get '/about' do

  erb '<h3>about redmart. it is not blue</h3>'

end

end
