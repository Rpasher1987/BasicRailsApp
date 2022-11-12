class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    user = User.find_by(id: params[:user_id])

    post = user.posts.create(post_params)

    render json: { post: post }
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
