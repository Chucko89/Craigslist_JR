get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/categories/create_post/:category' do
  @category = params[:category]
  erb :create_post
end

post '/categories/:category' do
  p params
  redirect "/categories/#{params[:category]}"
end

get '/categories/:category' do
  @category = Category.find(params[:category])
  erb :categories
end

get '/categories/post/:post' do
  @post = Post.find(params[:post])
  erb :post
end
