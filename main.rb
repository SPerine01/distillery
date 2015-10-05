require "sinatra"
require "mandrill"

def send_mail(params)
    mail= Mandrill::API.new 
    message = {  
        :subject=> "customer ",  
        :from_name=> params[:first_name],  
        :text=>"ttt",  
        :to=>[{:email=> "vt0826@gmail.com", 
        :name=> "distillery"}],  
        :html=>"<html><h1>#{params[:comment]} </h1></html>",                
        :from_email=>params[:email]
   }
    sending = mail.messages.send message
    puts sending
end


get "/distillery" do
    erb:distill
end

post "/contact_us" do
   send_mail(params)
end


