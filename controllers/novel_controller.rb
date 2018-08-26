class NovelController < Sinatra::Base
  # sets the root as the parent directory of the current File
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly.
  set :views, Proc.new{File.join(root,'views')}

  set :public_folder, Proc.new{File.join(root, 'public')}

 # add this line to setup the reloader
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @novels = Novel.all
    erb :'novels/index'
  end

  get '/new' do
    @title = "New Novel"
    @novel = Novel.new
    erb :'novels/new'
  end

  post '/' do
    novel = Novel.new
    novel.novel = params[:novel]
    novel.novel_img = params[:novel_img]
    novel.chapter_number = params[:chapter_number]
    novel.chapter_title = params[:chapter_title]
    novel.chapter_body = params[:chapter_body]
    novel.save
    redirect "/"
  end


  get '/:id' do
    id = params[:id].to_i
    @novel = Novel.find(id)
    erb :'novels/show'
  end

  get '/:id/edit' do
    @title= "Edit Novel"
    id = params[:id].to_i
    @novel = Novel.find(id)
    erb :'novels/edit'
  end

  put '/:id' do
    id = params[:id].to_i
    novel = Novel.find(id)
    novel.novel_img = params[:novel_img]
    novel.chapter_number = params[:chapter_number]
    novel.chapter_title = params[:chapter_title]
    novel.chapter_body = params[:chapter_body]
    novel.save
    redirect "/"
  end

  delete '/:id' do
    id = params[:id].to_i
    Novel.destroy(id)
    redirect "/"
  end




end
