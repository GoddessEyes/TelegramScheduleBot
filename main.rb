# frozen_string_literal: true

require 'telegram/bot'

token = ENV['BOT_TOKEN']

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    if defined? message.text
      case message.text
      when '/start'
        bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.sender_chat.title}")
      when '/stop'
        bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.sender_chat.title}")
      end
    end
  end
end
