class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  get "/posts" do
    Post.all.to_json(include: [:likes, :replies])
  end

  get "/posts/:id" do
    post = Post.find(params[:id])
    post.to_json(include: [:likes, :replies])
  end

  get "/users" do
    User.all.to_json
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end


  # might need one about likes


end
