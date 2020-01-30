#sinatra1.rb
require 'sinatra'  

get '/' do
  "Hello, World!"
end

get '/getdoc' do
  "<!DOCTYPE html>
  <html>
  <style>
  body {
  color: red;
}
</style>
 <h1>This is Sinatra baby!</h1>
  </html>"
end

get '/post_it.html' do

"<!DOCTYPE html>
<html>
    <body>
    <form action='/submitted' method='POST'>
       
            Message:
            <input type= 'text' name= 'message'>
            <input type= 'submit' value='submit'>
        </form>
    </body>
</html>"
end

post "/submitted" do
    "<h1>Form Submitted</h1>"
    "<h1>#{params[:message]}</h1>"
    if params[:message] == "welcome"
      "Thank you"
    else
      "I don't understand"
    end

  end
  

put "/submitted" do
  end  
  delete "/submitted" do
  end

get '/logon.html' do

"<!DOCTYPE html>
<html>
    <body>
    <form action='/logon' method='POST'>
       
            Message:
            <input type= 'text' name= 'username'>
            <input type= 'text' name= 'password'>
            <input type= 'submit' value='submit'>
        </form>
    </body>
</html>"
end

post "/logon" do
    "<h1></h1>"
    "<h1>#{params[:username]}</h1>"
    if params[:username] == "bob" 
      "SUCCESS"
    else
      "FAILURE"
    end

  end
