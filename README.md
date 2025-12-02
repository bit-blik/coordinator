# Bitblik coordinator

## Requirements

- postgres
- LND
- simplex group
- matrix room (optional)
  

## Signal

How to find out signal group id:
`./signal-cli -u +XXXXXXXX sendSyncRequest`
`./signal-cli listGroups`

## Telegram

How to find out telegram bot token & chat id:
- create bot with @BotFather
- add the bot to the group and make it admin
- send a message to your group to see the chat id in the response
- get chat id with https://api.telegram.org/bot<your-bot-token>/getUpdates

