# => Ruby.rb
# => Discord bot outline using dicordrb gem written in ruby
# => Author: Fadini
# => 4/23/2018


require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: 'TOKEN HERE', client_id: CLIENT ID HERE, prefix: '!'

puts "||Bot is alive and active||" + "\n"

#******************************************************
#When a user type whatever... it will respond with that
#******************************************************

bot.message(with_text: "USER SAYS") do |event|
	event.respond "BOT RESPONDS"
end

#******************************************************
#Read a file and randomly select a line - make the rand(x) be the lines in the file
#******************************************************
bot.message(with_text: "USER SAYS") do |event|
	
	jokeList = IO.readlines("jokes.txt")

	event.respond jokeList[rand(11)]
end

#*****************************************************
#Have a randomly chosen response to a user input
#*****************************************************
bot.message(with_text: "USER INPUT") do |event|
	num = rand(0..100)
	random = num % 2

	if random == 0
		event.respond "RESPONSE 1"
	elsif random == 1
		event.respond "RESPONSE 2"
	else
		event.respond "Something went wrong"
	end

end

#****************************************************
#Only disconnects from the user with the event.user.id (you should put ur ID)
# => So only you can turn it off
#****************************************************
bot.command(:exit, help_available: false) do |event|
   break unless event.user.id == EVENT_USER_ID_HERE
   bot.send_message(event.channel.id, "Goodbye")
  exit
end




#****************************************************
#Stuff I have for voice --- doesn't work smoothly
#****************************************************

# bot.command(:connect) do |event|
	
# 	channel = event.user.voice_channel
	
# 	next "Join a voice channel" unless
	
# 	bot.voice_connect(channel)
	
# 	"Connected to voice channel #{channel.name}"
# end





# bot.command(:play) do |event|

# 	event.voice.encode_file('PATH TO FILE')
	
# 	voice_bot = event.voice
	 
# 	voice_bot.play_file(voiceBot)
# end



bot.run
