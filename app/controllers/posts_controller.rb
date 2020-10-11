class PostsController < ApplicationController
  def new
    @post = Post.new
    @nums = [*1...37]
  end

  def index
    @nums = [*1...37]
    if params[:option] == "research"
      @posts = Post.where(research_type: "調査")
    elsif params[:option] == "experiment"
      @posts = Post.where(research_type: "実験")
    else
      @posts = Post.all.order(created_at: :desc)
    end
  end

  def create
    Post.create(research_type: params[:post][:research_type], time: params[:post][:time], place: params[:post][:place], url: params[:post][:url], content: params[:post][:content], user_id: @current_user.id)
    flash[:notice] = "投稿を作成しました"
    redirect_to :action => 'index'
  end

  def edit
    @nums = [*1...37]
    @post = Post.find_by(id: params[:id])
    @time = @post.time.gsub("[", "").gsub("]", "").gsub(" ", "").split(",")
    @time = @time.map {|x| x.gsub(/[^\d]/, "")}.map(&:to_i)
  end

  def show
    
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.update(research_type: params[:post][:research_type], time: params[:post][:time], place: params[:post][:place], url: params[:post][:url], content: params[:post][:content])
    flash[:notice] = "投稿を編集しました"
    redirect_to :action => 'index'
  end
  
end
