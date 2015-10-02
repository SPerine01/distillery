require "mandrill"

def email_sent(the_message)

	mandrill = Mandrill::API.new

message = {  
	:subject=> "Hello from the Mandrill API",
	:from_name=> "Your name",  
	:text=>"Hi message, how are you?",
	:to=>[{:email=> "recipient@theirdomain.com", :name=> "Recipient1"}],

	email_sent "New subscription to Distillery!"

	puts sending
end

get "distillery" do
	erb :distill
end

get "contact" do 
	erb :contact
	email_sent params[ :]
end 