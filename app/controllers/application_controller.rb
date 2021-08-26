class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # GET

  get "/posts" do
    #get all posts, starting with the most recent
    Post.all.order('created_at DESC').to_json(include: {user: {only: [:username, :avatar]}, community: {only: [:name, :emoji]}, replies: {include:[user: {only: [:username, :avatar]}]}, likes: {only: [:post_id, :user_id]}})
  end

  # get "/posts/top" do
  #   #get all posts, starting with the most recent
  #   Post.all.order('created_at ASC').to_json(include: {user: {only: [:username, :avatar]}, community: {only: [:name]}, replies: {include:[user: {only: [:username, :avatar]}]}, likes: {only: [:post_id, :user_id]}})
  # end

  get '/posts/:id' do
    #get post by ID
    post = Post.find(params[:id])
    post.to_json(include: [:likes, :replies])
  end

  get '/posts/:id/likecount' do
    # special get that calculates the number of likes a give post has
    post_likes = Post.find(params[:id]).like_count
    post_likes.to_json
  end

  get "/users" do
    User.all.to_json
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end

  # get '/users/:username' do
  #   user = User.find_by!(params[:username])
  #   user.to_json
  # end

  get "/communities" do
    Community.all.to_json
  end

  # POST

  post '/posts' do
    Post.create(
      headline: params[:headline], 
      content: params[:content], 
      image_url: params[:image_url], 
      user_id: params[:user_id], 
      community_id: params[:community_id]).to_json(include: {user: {only: [:username, :avatar]}, community: {only: [:name, :emoji]}, replies: {include:[user: {only: [:username, :avatar]}]}, likes: {only: [:post_id, :user_id]}})
  end

  post '/likes' do
    Like.create(
      user_id: params[:user_id],
      post_id: params[:post_id]
    ).to_json
  end

  post '/replies' do 
    Reply.create(
      user_id: params[:user_id],
      post_id: params[:post_id],
      content: params[:content]
    ).to_json
  end

  # DELETE

  delete '/posts/:id' do
    post = Post.find(params[:id])
    post.destroy
    post.to_json
  end

end
