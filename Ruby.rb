# => Ruby.rb
# => Simple discord bot named Ruby written in ruby
# => Author: Fadini
# => 4/23/2018


require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: 'TOKEN HERE', client_id: CLIENT ID HERE, prefix: '!'

puts "||Ruby is alive and active||" + "\n" + "
%(#&&&&&&(,((((((((((#((#&@@@@@@@@@@&&&&%//&@@&&@####///(
@#(((((#%/,((((##(((##&@@@@@@@@@@@@@@@@@@@@@@@&&@#///#%%%
@#####((((########@@@@@@@@@@@@@@@@@@@@@@@@@@@##//(#%%%@
@@&&&&&/((#((###%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(#(((%%%@
@@&&&&&((#((((#&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%%%%%%%%@
@@@&&&&%#(((((*.%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%%%%%%%%
%@%&&&&##((((&@@@@@@@@@@@@(...%@@@@@@@@@@@@@@@@@@&%%%%%%%
###%&&&&%#((##&@@@@@@@@%&&*     .(@@@@@@@@@@@@@@@@@@&%%%%%%
@#. . ,(#((((#@@@@@#&&(&(     .,,,(@@@@@@@@@@@@@@@@@@@&%%%%
%(,,,.*(#((##%@@@@@#(,    ,,. .. #@@@@@@@@@@@@@@@@&&&&%%%
(##(((/(#(#(#%@@@@@#,,..     .(#%&&%&%@@(@@@@@*(@@@@&%%%%%%
(@&(/* .((#((%@@@@@/.       /(%##/#%*@@@@(.,&@@@&%%%%%%
######(##(((##@@@@@@*.,*.       .,,.../,*@@@%..%@@@@&%%%%%%
/..//(&%#(((((&@&%@@/..          ......./@@@*(@@@@@@%%%%%
* ./((&%#((##(#@@#@@(   ..             .(&@@@@@@@@@@%(#%%&&
#########/((#(#&@&&@&,                 ,&@@@@@@@@@@&%&&&&&&
(##((/,*(/(((#%%%&&@@&,   ...        .,/@@@@@@@@@@(((%%&&&&
(@&(/* .#(((#%%%%%%%@@@#.         .,,,(%@@@@@@&&&&&&&&&&&&&
(((#((//(####%%%%%(#&&@@,    ,(%&&&&&&&&&&&&&&&&&&&&&&&&&
(((((#%#%%%#%%%%%%&%%%&@@&&&&&&@@@@@@@&&&&&&&&&&&&&&&&&&&&&
%%%#%%&&%#%%%%%&%#%##%&@&&@@@@@@@@@@@@&&&&&&&&&&&&&&&&&&&&&
&%%(.,*.,/#%#%%%%%@@@@@@@@@@@@@@@@@@@&&&&&&&&&&&&&&&&&&&&&&
( .. ... *&@@@@@@@@@@@@@@@@@@@@@@@&&&&&&&&&&&&&&&&&&&&&&&&&
.         *@@@@@@@@@@@@@@@@@@@@@&&@@@&&&&&&&&&&&&&&@@&&&&&&
           /@@@@@&%(((&&&&&&&@&&&&&@@@&&&&@@@@@@@@&&&&&&&&&
          *#&&&@@@@@@@@@@&&&&&@&&&@&&@@@@@@@@@@@@@@&&&&&&&&
        ./&&&&@@@@@@@@@@@@@%%&&&&&@@@@@@@@@@@@@@@@@@&&&&&&&
.      ,%&&&@@@@@@@@@@@@@@@&%&@@@@@@@@@@@@@@@@@@@@@@@@&&&&&
#,   .#&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&&"

bot.message(with_text: "!Ruby") do |event|
	event.respond "Hi there"
end

bot.message(with_text: "!Ruby jokes") do |event|
	
	jokeList = IO.readlines("jokes.txt")

	event.respond jokeList[rand(11)]
end

bot.message(with_text: "lol") do |event|
	event.respond "hahaha"
end

bot.message(with_text: "omegaLOL") do |event|
	event.respond "hahaha"
end

bot.message(with_text: "no") do |event|
	event.respond "yes"
end

bot.message(with_text: "yes") do |event|
	event.respond "no"
end

bot.message(with_text: "wut") do |event|
	event.respond "It's also a customizable high impact sniper rifle. (A-what?) It's also a gun."
end

bot.message(with_text: "wat") do |event|
	event.respond "It's also a customizable high impact sniper rifle. (A-what?) It's also a gun."
end

bot.message(with_text: "what") do |event|
	event.respond "It's also a customizable high impact sniper rifle. (A-what?) It's also a gun."
end

bot.message(with_text: "wow") do |event|
	event.respond "Wow! That Ruby girl is really, really cool... and I wanna be her friend!"
end
bot.message(with_text: "bye") do |event|
	event.respond "I'll catch up- I mean, I will... reconvene with you both... at a later... juncture! At a juncture. Yeah"
end

bot.message(with_text: "bro") do |event|
	event.respond "Sisters, friends... Weiss"
end

bot.message(with_text: "hey") do |event|
	event.respond "heyo"
end

bot.message(with_text: "heyo") do |event|
	event.respond "heyo"
end


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
