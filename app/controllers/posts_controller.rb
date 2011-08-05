class PostsController < ApplicationController
  respond_to :html
  
  before_filter :authenticate_user!
  before_filter :set_current_user
  
  def index
    @posts = Post.all(:include => :tags)
  end

  def show
    @post = Post.where(:slug => params[:id]).first
  end

  def new
    @post = @user.posts.build
  end

  def create
    @post = @user.posts.build(params[:post])
    if @post.save
      flash[:notice] = "#{@post.title} was created successfully."
    end
    respond_with(@post) 
  end

  def edit
    @post = Post.where(:slug => params[:id]).first
  end

  def update
    @post = Post.where(:slug => params[:id]).first
    if @post.update_attributes(params[:post])
      flash[:notice] = "#{@post.title} has been successfully updated."
    end
    respond_with(@post)
  end

  def destroy
    @post = Post.where(:slug => params[:id]).first
    if @post.destroy
      redirect_to root_path, :notice => "#{@post.title} has been removed."
    else
      redirect_to :back, :notice => "Something went wrong, try again."
    end
  end
end