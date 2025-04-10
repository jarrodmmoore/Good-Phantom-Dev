#multiplayer quirk: we don't increment the player's "pCurrentArea" score until later
#so that means we need to temporarily shift it up for this function
execute if score #multiplayer value matches 1 run scoreboard players add @s pCurrentArea 1

#we show the title display to anyone spectating us
function phan:player/tell_spectators

#:(
playsound minecraft:block.note_block.didgeridoo master @a[tag=tellMe] ~ 100000 ~ 100000 0.65
title @a[tag=tellMe] title ["",{text:"| ",bold:false,color:"white"},{text:"F",bold:true,color:"#404040"},{text:" |",bold:false,color:"white"}]
tag @a[tag=tellMe] remove tellMe

#count number of times this has happened in a row
scoreboard players add @s fails 1

#record rank as failure
execute if score @s pCurrentArea matches 2 run scoreboard players set @s rankArea1 5
execute if score @s pCurrentArea matches 3 run scoreboard players set @s rankArea2 5
execute if score @s pCurrentArea matches 4 run scoreboard players set @s rankArea3 5


#shift back down
execute if score #multiplayer value matches 1 run scoreboard players remove @s pCurrentArea 1