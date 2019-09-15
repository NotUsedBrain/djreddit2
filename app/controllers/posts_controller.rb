class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @community = Community.find(params[:community_id])
    @post = @community.posts.create(params[:post].permit(post_params))

    redirect_to community_path(@community)
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
