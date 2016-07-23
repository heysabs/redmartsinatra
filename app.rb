class RedmartSinatraApp < Sinatra::Base

get '/' do
  erb 'hello world'
end

# products CONTROLLER
# restful resources, create read update delete!

get '/products' do

  @products = Product.all
  erb :'products/index'

end

get '/products/:id' do
  if params[:id] == 'new'
    erb :'products/new'
  else
    @product = Product.find(params[:id])
    erb :'products/show'
  end
end

get '/products/:id/edit' do
  @product = Product.find(params[:id])
  erb :'products/edit'
end

post '/products' do
  puts params[:product]

  @new_product = Product.new(params[:product])

  if @new_product.save
    redirect("/products")
  else erb :"products/new"

  end
end

put '/products/:id' do
    @updated_product = Product.find(params[:id])

    if @updated_product.update_attributes( params[:product] )
      redirect("/products")
    end
  end

delete '/products/:id' do
  @deleted_product = Product.find(params[:id])

  if @deleted_product.destroy
    redirect("/products")
  else
    erb :"products/#{@deleted_product.id}"
  end
end

# PRODUCTS CONTROLLER

get '/products' do

  @products = Product.all
  erb :'products/index'

end

get '/products/:id' do
  if params[:id] == 'new'
    erb :'products/new'
  else
    @product = Product.find(params[:id])
    erb :'products/show'
  end
end

get '/products/:id/edit' do
  @product = Product.find(params[:id])
  erb :'products/edit'
end

post '/products' do
  puts params[:product]

  @new_product = Product.new(params[:product])

  if @new_product.save
    redirect("/products")
  else erb :"products/new"

  end
end

put '/products/:id' do
    @updated_product = Product.find(params[:id])

    if @updated_product.update_attributes( params[:product] )
      redirect("/products")
    end
  end

delete '/products/:id' do
  @deleted_product = Product.find(params[:id])

  if @deleted_product.destroy
    redirect("/products")
  else
    erb :"products/#{@deleted_product.id}"
  end
end

end
