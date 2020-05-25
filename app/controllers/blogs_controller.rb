class BlogsController < ApplicationController
  def index
    @blogs = Blog.all.order(created_at: :DESC)
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path
      flash[:notice] = "投稿が完了しました。"
    else
      render :new
    end
  end

  def show
    @blog = Blog.find_by(id: params[:id])
  end

  def edit
    @blog = Blog.find_by(id: params[:id])
  end

  def update
    @blog = Blog.find_by(id: params[:id])
    if @blog.update(blog_params)
      redirect_to blogs_path
      flash[:notice] = "編集が完了しました。"
    else
      render :edit
    end
  end

  private
  def blog_params
    params.require(:blog).permit(:content).merge(user_id: current_user.id)
  end
end
