#put a new bot controller entity near spawn and initialize it

#store desired bot difficulty for later
$scoreboard players set #botDifficulty value $(difficulty)
#(note: you can call this function with difficulty:0 to get a random difficulty bot)

#stop players from cooking the server's processor with too many bots
execute if score #botCount value >= #MAX_BOT_COUNT value run return run function phan:game/2/bots/error_max_bot_count

#create the bot
execute positioned 198 -10 118 summon block_display run function phan:game/2/bots/create_bot_initialize