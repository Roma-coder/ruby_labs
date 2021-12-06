require 'rubygems'
require 'telegram/bot'

token = '5065258697:AAEWC-jLaBJl5chzHSSEAb9yJPWrGMKEchQ'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text

    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    when '/sitepoint'
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome to http://sitepoint.com")
      when '/map'
      bot.api.send_location(chat_id: message.chat.id, latitude: -37.807416, longitude: 144.985339)
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
       else
      bot.api.send_message(chat_id: message.chat.id, text: "I don't understand you, write: 
        /start
        /sitepoint
        /map
        /stop
        ")
    end
  end
end
