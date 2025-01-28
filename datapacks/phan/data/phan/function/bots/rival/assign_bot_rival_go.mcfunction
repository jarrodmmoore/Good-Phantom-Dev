#executed by the botController that is becoming the rival bot

#get tag
tag @s add botRival

#remember: bot rival exists but has not finished yet
scoreboard players set #botRivalFinished value 0

#keep track of this bot's difficulty globally
scoreboard players operation #botRivalDifficultyFloor value = @s botSkill
scoreboard players remove #botRivalDifficultyFloor value 1

#=====
#0 = do nothing
#1 = match max level
scoreboard players set #test value 1

#this step is needed because, while unlikely, it's possible that a lower level bot is beating a higher level bot for 1st in points

#don't change level if max level is low and we're far behind
execute if score #botHighestSkill value matches 2 if score #humanPointsAhead value matches ..-3 run scoreboard players set #test value 0
execute if score #botHighestSkill value matches 3 if score #humanPointsAhead value matches ..-5 run scoreboard players set #test value 0

#no rival if we don't even want to match max level
execute if score #test value matches 0 run return run tag @s remove botRival

#match max level
scoreboard players operation @s botSkill = #botHighestSkill value
scoreboard players operation #botRivalID value = @s playerID

#=====
#if only 1 bot was originally max level and did NOT become rival, drag them down 1 level
scoreboard players set #test2 value 0
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] if score @s botOriginalSkill >= #botHighestSkill value run scoreboard players add #test2 value 1
execute if score #test2 value matches 1 as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,tag=!botRival] if score @s botOriginalSkill >= #botHighestSkill value run function phan:bots/rival/demote_1_level

#=====
#ok, we matched max level. should we go beyond max level as well?

#0 = do nothing
#1 = go 1 beyond max level
scoreboard players set #test value 0

#count how many bots match the highest skill
scoreboard players set #botsWithMaxSkill value 0
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] if score @s botSkill >= #botHighestSkill value run scoreboard players add #botsWithMaxSkill value 1
#if multiple bots are highest skill, we should bump the rival 1 beyond it
execute if score #botsWithMaxSkill value matches 2.. run scoreboard players set #test value 1

#very easy: never go beyond max level
execute if score #botHighestSkill value matches 1 run scoreboard players set #test value 0

#don't go beyond max level if humans falling behind
execute if score #botHighestSkill value matches 2 if score #humanPointsAhead value matches ..-1 run scoreboard players set #test value 0
execute if score #botHighestSkill value matches 3 if score #humanPointsAhead value matches ..-3 run scoreboard players set #test value 0
execute if score #botHighestSkill value matches 4 if score #humanPointsAhead value matches ..-5 run scoreboard players set #test value 0
execute if score #botHighestSkill value matches 5 if score #humanPointsAhead value matches ..-9 run scoreboard players set #test value 0

#low bot count: don't go beyond max level if we're too far behind
execute if score #botCount value matches ..5 if score #botHighestSkill value matches ..4 if score #humanPointsAhead value matches ..-3 run scoreboard players set #test value 0
execute if score #botCount value matches ..4 if score #botHighestSkill value matches ..4 if score #humanPointsAhead value matches ..-2 run scoreboard players set #test value 0
execute if score #botCount value matches ..3 if score #botHighestSkill value matches ..4 if score #humanPointsAhead value matches ..-1 run scoreboard players set #test value 0

#bump skill up?
execute if score #test value matches 1 run scoreboard players add @s[scores={botSkill=..5}] botSkill 1

#====

#if we made it here, we need to update our difficulty tags!

#keep track of this bot's difficulty globally
scoreboard players operation #botRivalDifficultyFloor value = @s botSkill
scoreboard players remove #botRivalDifficultyFloor value 1

#set display stuff
execute store result storage phan:bot_args id int 1 run scoreboard players get @s botID
function phan:game/2/bots/bot_get_colortag
function phan:game/2/bots/change_bot_difficulty_macro with storage phan:bot_args