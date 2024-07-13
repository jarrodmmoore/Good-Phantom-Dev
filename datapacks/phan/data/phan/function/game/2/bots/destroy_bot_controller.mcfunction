#executed by the block_display that controls a bot

#if we were on the top of the stack of bots, decrement bot count
execute if score @s botID = #botCount value run scoreboard players remove #botCount value 1
execute if score #botCount value matches ..-1 run scoreboard players set #botCount value 0

#free up the name we were using
scoreboard players operation #test value = @s botName
execute if entity @s[tag=!tryhardName] as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] if score @s r = #test value run tag @s remove nameTaken
execute if entity @s[tag=tryhardName] as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] if score @s r = #test value run tag @s remove nameTakenTryhard

#clear from any scoreboard we might be on
execute store result storage phan:bot_args id int 1 run scoreboard players get @s botID
function phan:game/2/bots/clear_bot_from_scoreboards with storage phan:bot_args

#if in team select area, get rid of bot entities
scoreboard players operation #checkID value = @s botID
execute if score #gameState value matches 2 as @e[type=zombie,tag=botPreviewEntity] if score @s age = #checkID value at @s run function phan:game/2/bots/bot_preview_entity_perish

#delete self
tag @s remove botController
scoreboard players set @s lifespan 0