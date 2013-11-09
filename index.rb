# Teach about requiring a file
require 'sinatra'


# Teach about HTTP actions
# Teach about methods- the action will print out the return value of your method
get "/" do

  my_array = ["foo", "bar", "baz"]

  reverse_array = my_array.map do |item|
    item.reverse
  end

  # how to render a page.
  # local variables
  erb :index, locals: { my_array: reverse_array }

end

get "/unicorns" do
  "I <3 UNICORNS"
end

