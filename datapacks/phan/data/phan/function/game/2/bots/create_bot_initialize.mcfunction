#executed by a block_display that was just summoned and is destined to become a botController

#so... become a botController!
tag @s add botController

#get a playerID
function phan:join/player_get_id

#assign bot ID
scoreboard players add #botCount value 1
scoreboard players operation @s botID = #botCount value

#assign bot difficulty
execute unless score #botDifficulty value matches 1..6 store result score #botDifficulty value run random value 1..5
scoreboard players operation @s botSkill = #botDifficulty value

#=====
#assign bot name

#fallback is 0
scoreboard players set @s botName 0
scoreboard players set #getID value 0
scoreboard players set #getID2 value 0

#try to get a tryhard name if we're a tryhard bot
execute store result score #test value run execute if entity @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=1..14},tag=!nameTakenTryhard]
execute if score @s botSkill matches 5..6 if score #test value matches 1.. run scoreboard players operation #getID value = @e[limit=1,sort=random,type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=1..14},tag=!nameTakenTryhard] r
execute if score #getID value matches 1.. as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] if score @s r = #getID value run tag @s add nameTakenTryhard
execute if score #getID value matches 1.. run scoreboard players operation @s botName = #getID value
execute if score #getID value matches 1.. run tag @s add tryhardName

#still have no name? try the regular names
execute if score #getID value matches 0 store result score #test value run execute if entity @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=1..24},tag=!nameTaken]
execute if score #getID value matches 0 if score #test value matches 1.. run scoreboard players operation #getID2 value = @e[limit=1,sort=random,type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=1..24},tag=!nameTaken] r
execute if score #getID2 value matches 1.. as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] if score @s r = #getID2 value run tag @s add nameTaken
execute if score #getID2 value matches 1.. run scoreboard players operation @s botName = #getID2 value

#get bot ID, name, and nametag ready for a macro
execute store result storage phan:bot_args id int 1 run scoreboard players get @s botID
function phan:game/2/bots/bot_get_colortag
execute if score @s[tag=!tryhardName] botName matches 1.. run function phan:game/2/bots/index_bot_name
execute if score @s[tag=tryhardName] botName matches 1.. run function phan:game/2/bots/index_bot_name_tryhard

#macro
function phan:game/2/bots/bot_name_storage with storage phan:bot_args
#=====

#init some scores
scoreboard players set @s botPoints 0
#...

#spawn an entity representing ourselves in the team select area if we're in team select
execute if score #gameState value matches 2 if score #subGameState value matches 1 if score #desiredGamemode value matches 3 positioned 203 -30 112 rotated 45 0 run function phan:game/2/bots/spawn_bot_in_team_select