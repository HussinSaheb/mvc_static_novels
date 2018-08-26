class NovelController < Sinatra::Base
  # sets the root as the parent directory of the current File
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly.
  set :views, Proc.new{File.join(root,'views')}

  set :public, Proc.new{File.join(root, 'public')}

 # add this line to setup the reloader
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @novels = Novel.all
    erb :'novels/index'
  end

  get '/new' do
    @title = "New Post"
    @post = Post.new


    erb :'novels/new'
  end

  post '/' do
    post = Post.new
    post.title = params[:title]
    post.post_body = params[:post_body]
    post.save
    redirect "/"
  end


  get '/:id' do
    id = params[:id].to_i
    @post = Post.find(id)
    erb :'novels/show'
  end

  get '/:id/edit' do
    @title= "Edit Post"
    id = params[:id].to_i
    @post = Post.find(id)
    erb :'novels/edit'
  end

  put '/:id' do
    id = params[:id].to_i
    post = Post.find(id)
    post.title = params[:title]
    post.post_body = params[:post_body]
    post.save
    redirect "/"
  end

  delete '/:id' do
    id = params[:id].to_i
    Post.destroy(id)
    redirect "/"
  end




end
