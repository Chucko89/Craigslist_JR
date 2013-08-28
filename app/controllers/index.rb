get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/categories/:category' do
  @category = Category.find(params[:category])
  erb :categories
end

