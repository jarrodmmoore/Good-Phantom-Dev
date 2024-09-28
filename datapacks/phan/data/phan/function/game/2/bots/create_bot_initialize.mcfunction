#executed by a block_display that was just summoned and is destined to become a botController

#so... become a botController!
tag @s add botController

#assign bot ID
scoreboard players add #botCount value 1
scoreboard players operation @s botID = #botCount value

#get a playerID (use bot ID + 2000000000)
#playerIDs over 2000000000 are reserved for bots and are easily re-used, whereas human player IDs are assigned once and then never again
scoreboard players set @s playerID 2000000000
scoreboard players operation @s playerID += @s botID

#assign bot difficulty
execute unless score #botDifficulty value matches 1..6 store result score #botDifficulty value run random value 1..5
scoreboard players operation @s botSkill = #botDifficulty value
scoreboard players operation @s botOriginalSkill = @s botSkill

#=====
#assign bot name

#fallback is 0
scoreboard players set @s botName 0
scoreboard players set #getID value 0
scoreboard players set #getID2 value 0
scoreboard players set #getID3 value 0

#try to get a tryhard name if we're a tryhard bot
execute store result score #test value run execute if entity @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=1..15},tag=!nameTakenTryhard]
execute if score @s botSkill matches 5..6 if score #test value matches 1.. run scoreboard players operation #getID value = @e[limit=1,sort=random,type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=1..15},tag=!nameTakenTryhard] r
execute if score #getID value matches 1.. as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] if score @s r = #getID value run tag @s add nameTakenTryhard
execute if score #getID value matches 1.. run scoreboard players operation @s botName = #getID value
execute if score #getID value matches 1.. run tag @s add tryhardName

#still have no name? try the english names
execute if score #getID value matches 0 store result score #test value run execute if entity @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=1..24},tag=!nameTaken]
#1 in 3 chance of skipping to global names (as long as some are still available)
execute if score #getID value matches 0 if score #test value matches 1.. if entity @e[limit=1,type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=1..24},tag=!nameTakenGlobal] store result score #test value run random value 0..2
execute if score #getID value matches 0 if score #test value matches 1.. run scoreboard players operation #getID2 value = @e[limit=1,sort=random,type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=1..24},tag=!nameTaken] r
execute if score #getID2 value matches 1.. as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] if score @s r = #getID2 value run tag @s add nameTaken
execute if score #getID2 value matches 1.. run scoreboard players operation @s botName = #getID2 value
execute if score #getID2 value matches 1.. run tag @s add englishName

#still no name? try global name
execute if score #getID value matches 0 if score #getID2 value matches 0 store result score #test value run execute if entity @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=1..24},tag=!nameTakenGlobal]
execute if score #getID value matches 0 if score #getID2 value matches 0 if score #test value matches 1.. run scoreboard players operation #getID3 value = @e[limit=1,sort=random,type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=1..24},tag=!nameTakenGlobal] r
execute if score #getID3 value matches 1.. as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] if score @s r = #getID3 value run tag @s add nameTakenGlobal
execute if score #getID3 value matches 1.. run scoreboard players operation @s botName = #getID3 value
execute if score #getID3 value matches 1.. run tag @s add globalName
#is it xenophobic to make the non-english names less common? hope not.
#i'm operating on the assumption that most of our players will be US/EU

#get bot ID, name, and nametag ready for a macro
execute store result storage phan:bot_args id int 1 run scoreboard players get @s botID
function phan:game/2/bots/bot_get_colortag
execute if score @s[tag=globalName] botName matches 1.. run function phan:game/2/bots/index_bot_name_global
execute if score @s[tag=englishName] botName matches 1.. run function phan:game/2/bots/index_bot_name_english
execute if score @s[tag=tryhardName] botName matches 1.. run function phan:game/2/bots/index_bot_name_tryhard

#note: if we STILL didn't get assigned a name, the following function call will assign us the name "CPU_X".
#this probably won't happen unless someone sets #MAX_BOT_COUNT value above 48
#and if your computer can handle that many bots, you are officially a bigger dork than me. well done.

#macro
function phan:game/2/bots/bot_name_storage with storage phan:bot_args
#=====

#init some scores
scoreboard players set @s botPoints 0
#...

#spawn an entity representing ourselves in the team select area if we're in team select
execute if score #gameState value matches 2 if score #subGameState value matches 1 if score #desiredGamemode value matches 3 positioned 203 -30 112 rotated 45 0 run function phan:game/2/bots/spawn_bot_in_team_select