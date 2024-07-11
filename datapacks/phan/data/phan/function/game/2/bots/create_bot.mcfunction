#put a new bot controller entity near spawn and initialize it
$scoreboard players set #botDifficulty value $(difficulty)
execute positioned 198 -10 118 summon block_display run function phan:game/2/bots/create_bot_initialize