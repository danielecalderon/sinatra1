#sinatra1.rb

require 'sinatra' 

enable :sessions

get "/set" do
    session[:message] = params[:message]
    "session saved"
  end 
get "/get" do
    session[:message]
  end
  
get '/' do
  "Hello, World!"
end

get "/name.html" do
  "<!DOCTYPE html>
<html>
    <body>
    <form action='/hello' method='POST'>
       
            Message:
            <input type= 'text' name= 'name'>
          
            <input type= 'submit' value='submit'>
        </form>
    </body>
</html>"
  
end

get '/hello' do
    session[:name] = params[:name]
    "Saved the name okay"
  end 

  get "/get" do
    session[:name]
  end

  get "/greet" do
  Hello #{params[:name],session[:name]}

end
