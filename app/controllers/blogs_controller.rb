class BlogsController < ApplicationController
  before_action :set_blog, only: [:show,:edit,:update,:destroy]
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
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to blogs_path
      flash[:notice] = "編集が完了しました。"
    else
      render :edit
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path
    flash[:notice] = "投稿を削除しました"
  end

  private

  def blog_params
    params.require(:blog).permit(:content).merge(user_id: current_user.id)
  end

  def set_blog
    @blog = Blog.find_by(id: params[:id])
  end
end
