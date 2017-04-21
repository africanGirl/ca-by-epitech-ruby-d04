require 'facebook/messenger'
include Facebook::Messenger

# NOTE: ENV variables should be set directly in terminal for testing on localhost

# Subscribe bot to your page

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
	message.reply(text: 'Hello Nadia!')
end
