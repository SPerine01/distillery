require "sinatra"
require "mandrill"

def send_mail(params)
    mail= Mandrill::API.new 
    message = {  
        :subject=> "customer ",  
        :from_name=> params[:name],  
        :text=>"ttt",  
        :to=>[{:email=> "vt0826@gmail.com", 
        :name=> "distillery"}],  
        :html=>"<html><h1>#{params[:comment]} </h1></html>",                
        :from_email=>"vt0826@hotmail.com"
   }
    sending = mail.messages.send message
    puts sending
end


get "/" do
    erb:contact
end

post "/contact_us" do
   send_mail(params)
end
