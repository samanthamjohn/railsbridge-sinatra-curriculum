# Teach about requiring a file
require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:///foo.db"

class Topic < ActiveRecord::Base
  has_many :votes

end

class Vote < ActiveRecord::Base
  belongs_to :topic

end

# Teach about HTTP actions
# Teach about methods- the action will print out the return value of your method
get "/" do

  # how to render a page.
  # local variables
  erb :index, locals: { topics: Topic.all }

end

get "/topics/:id" do
  @topic = Topic.find(params[:id])
  erb :show
end

post "/topics" do
  @topic = Topic.new(params[:topic])
  puts params[:topic]
  if @topic.save

    redirect "/"
  else
    redirect "/unicorns"
  end
end

post "/topics/:topic_id/vote" do
  @topic = Topic.find(params[:topic_id])
  @topic.votes.create
  redirect "/"
end
