class PostsController < ApplicationController
  def index
    if current_user
      @posts = Post.all.reverse
    else
      redirect_to '/login'
    end
  end

  def show
     @post = Post.find(params[:id])
  end


  def new
    @posts = Post.all.reverse
  end

  def create
    email = User.find_by(email: params[:email])
    # user = User.find_by(user_id: params[:user])
    Post.create(
      title: params[:title],
      content: params[:content],
      avatar: params[:avatar]
    )
    redirect_to root_path
  end
  def destroy
    # :id 를 통해 Post 찾는다.
    # 그걸 지워준다.
    post = Post.find(params[:id])
    post.destroy
    # redirect_to "/posts/show/#{params[:id]}"
    redirect_to '/'
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    # :id 를 통해 Post 찾는다.
    # 그걸 업데이트해준다.
    post = Post.find(params[:id])
    post.update(
      title: params[:title],
      content: params[:content],
    )
    redirect_to "/posts/show/#{params[:id]}"
  end

  def add_comment
    email = User.find_by(email: params[:email])
    Comment.create(
      content: params[:content],
      post_id: params[:id],
    )
    redirect_to '/'
  end

end
