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