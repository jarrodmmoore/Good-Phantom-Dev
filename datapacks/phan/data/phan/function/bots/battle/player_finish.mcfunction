#finished!
tag @s remove ai
scoreboard players set @s lifespan 0

#quickly sync enderEyes value on bot entity just in case the bot had a data transfer queued up
scoreboard players operation @s enderEyes = #eyeShowAssign value

#make sure botController know it's finished with our position
scoreboard players operation #checkID value = @s botID
execute in overworld as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] if score @s botID = #checkID value run function phan:bots/battle/player_finish_controller


#let other bots know when rival has finished
execute if entity @s[tag=botRival] run scoreboard players set #botRivalFinished value 1
execute if entity @s[tag=botRival] run scoreboard players set #botRivalPosition value -1

#visuals
particle flash ~ ~1 ~ 0 0 0 1 1 force @a[tag=doneWithIntro]

#figure out how long everyone else has to finish
function phan:game/4/battle/player_finish_set_battle_end_time

#get finish pos! and increment the min position assignment number by 1
scoreboard players operation @s finishPos = #positionAssignMin value
scoreboard players add #positionAssignMin value 1
scoreboard players operation @s racePosDisplay = @s finishPos

#if only 1 player left, cancel any outstanding anvil mandate
execute store result score #playerCount value run execute if entity @a[tag=playing]
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie] run scoreboard players add #playerCount value 1
execute if score #playerCount value matches ..1 run scoreboard players set #mandateAnvil value 0

#announce to everyone else that we finished
execute as @a[tag=doneWithIntro] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.firework_rocket.blast",targets:"@s",pitch:"1",volume:"1"}
function phan:player/tell_actionbar_available
scoreboard players set @a[tag=tellMe] actionbarDelay 40
scoreboard players set @a[tag=tellMe,tag=navCompass] actionbarDelay 15
execute if score @s finishPos matches ..1 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"yellow",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"yellow",bold:true},{translate:"gp.versus.pos.1st",color:"yellow",bold:true},{text:"]",color:"yellow",bold:true}]
execute if score @s finishPos matches 2 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.2nd",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 3 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.3rd",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 4 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.4th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 5 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.5th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 6 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.6th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 7 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.7th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 8 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.8th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 9 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.9th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 10 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.10th",color:"white",bold:true},{text:"]",color:"white",bold:true}]

execute if score @s finishPos matches 11 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.11th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 12 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.12th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 13 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.13th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 14 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.14th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 15 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.15th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 16 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.16th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 17 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.17th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 18 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.18th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 19 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.19th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 20 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.20th",color:"white",bold:true},{text:"]",color:"white",bold:true}]

execute if score @s finishPos matches 21 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.21st",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 22 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.22nd",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 23 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.23rd",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 24 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.24th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 25 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.25th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 26 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.26th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 27 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.27th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 28 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.28th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 29 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.29th",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 30 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.30th",color:"white",bold:true},{text:"]",color:"white",bold:true}]

execute if score @s finishPos matches 31 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.31st",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 32 run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{translate:"gp.versus.pos.32nd",color:"white",bold:true},{text:"]",color:"white",bold:true}]
execute if score @s finishPos matches 33.. run title @a[tag=tellMe] actionbar ["",{translate:"gp.versus.player_finished",color:"white",bold:true,with:[{selector:"@s",color:"aqua",italic:false,bold:false}]},{text:" "},{text:"[",color:"white",bold:true},{score:{name:"@s",objective:"finishPos"},color:"white",bold:true},{text:"]",color:"white",bold:true}]