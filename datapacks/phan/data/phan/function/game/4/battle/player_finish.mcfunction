#finished!
tag @s add playerReservation
tag @s remove playing
scoreboard players set @s spectateDelay 80
gamemode spectator @s
scoreboard players reset @s joinGame
function phan:movement/reset_speed_self

#on the sidebar, we will have a big big score to make sure we're in first
scoreboard players operation @s enderEyesShow = #eyeShowAssign value
scoreboard players remove #eyeShowAssign value 1
scoreboard players display numberformat @s enderEyesShow fixed ["",{"text":"\uE037","color":"white"}]

#visuals
particle flash ~ ~1 ~ 0 0 0 1 1 force @a[tag=doneWithIntro]
scoreboard players set @s squidBlindTime 0
effect clear @s blindness

#battle will end 95 seconds after any finish
scoreboard players operation #newTimeLimit value = #vTimeLimit value
execute if score #newTimeLimit value matches 1900.. run scoreboard players set #newTimeLimit value 1900
#must abide by minimum time limit for level
scoreboard players operation #test value = #vTimeElapsed value
scoreboard players add #test value 1900
execute if score #test value < #vMinTimeLimit value run scoreboard players operation #newTimeLimit value = #vMinTimeLimit value
#apply the new time limit
scoreboard players operation #vTimeLimit value = #newTimeLimit value

#set music
tag @s add noSpecDataAdopt
scoreboard players set @s musicTrack 11
function phan:bgm/set_self_bgm_delayed_2

#get finish pos! and increment the min position assignment number by 1
scoreboard players operation @s finishPos = #positionAssignMin value
scoreboard players add #positionAssignMin value 1
scoreboard players operation @s racePosDisplay = @s finishPos

#advancement if we won with 0 KOs (there must be at least one other player in the game)
execute if entity @s[scores={finishPos=1,KOs=..0}] if entity @a[tag=playing] run advancement grant @s only phan:portal_race/pacifist_run

#advancement if we popped into 1st at the last second and won
execute if entity @s[scores={finishPos=1,timeInFirst=..19}] run advancement grant @s only phan:portal_race/youve_swindled_me

#if only 1 player left, cancel any outstanding anvil mandate
execute store result score #playerCount value run execute if entity @a[tag=playing]
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie] run scoreboard players add #playerCount value 1
execute if score #playerCount value matches ..1 run scoreboard players set #mandateAnvil value 0

#make sure HUD doesn't get stuck on a blank timer thing
scoreboard players set @s hudFlashTime 0
function phan:custom_hud/versus_battle/_update

#tell self that we finished
function phan:player/tell_spectators
title @a[tag=tellMe] subtitle [""]
title @a[tag=tellMe] title ["",{"translate":"gp.versus.finished","color":"yellow","bold":true}]

#announce to everyone else that we finished
execute as @a[tag=doneWithIntro] at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ 100000 ~ 100000 1
scoreboard players set @a[tag=doneWithIntro] actionbarDelay 40
execute if score @s finishPos matches ..1 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"yellow","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"yellow","bold":true},{"translate":"gp.versus.pos.1st","color":"yellow","bold":true},{"text":"]","color":"yellow","bold":true}]
execute if score @s finishPos matches 2 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.2nd","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 3 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.3rd","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 4 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.4th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 5 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.5th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 6 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.6th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 7 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.7th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 8 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.8th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 9 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.9th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 10 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.10th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]

execute if score @s finishPos matches 11 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.11th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 12 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.12th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 13 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.13th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 14 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.14th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 15 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.15th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 16 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.16th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 17 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.17th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 18 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.18th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 19 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.19th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 20 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.20th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]

execute if score @s finishPos matches 21 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.21st","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 22 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.22nd","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 23 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.23rd","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 24 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.24th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 25 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.25th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 26 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.26th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 27 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.27th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 28 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.28th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 29 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.29th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 30 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.30th","color":"white","bold":true},{"text":"]","color":"white","bold":true}]

execute if score @s finishPos matches 31 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.31st","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 32 run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"translate":"gp.versus.pos.32nd","color":"white","bold":true},{"text":"]","color":"white","bold":true}]
execute if score @s finishPos matches 33.. run title @a[tag=doneWithIntro] actionbar ["",{"translate":"gp.versus.player_finished","color":"white","bold":true,"with":[{"selector":"@s","color":"aqua","italic":false,"bold":false}]},{"text":" "},{"text":"[","color":"white","bold":true},{"score":{"name":"@s","objective":"finishPos"},"color":"white","bold":true},{"text":"]","color":"white","bold":true}]