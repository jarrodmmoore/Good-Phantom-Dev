#cycle through the options
scoreboard players add @s spectateMode 1
execute if score @s spectateMode matches 2.. run scoreboard players set @s spectateMode 0

#feedback
function phan:common/playsound_positionless_macro {sound:"minecraft:block.note_block.cow_bell",targets:"@s",pitch:"2"}
tellraw @s ["",{text:" "}]
execute if score @s spectateMode matches ..0 run tellraw @s ["",{translate:"gp.game.spectator_view",italic:false,with:[{translate:"gp.game.spectator_view.player_pov",color:"yellow",italic:false}]}]
execute if score @s spectateMode matches 1 run tellraw @s ["",{translate:"gp.game.spectator_view",italic:false,with:[{translate:"gp.game.spectator_view.free_cam",color:"yellow",italic:false}]}]
execute if score @s spectateMode matches 2 run tellraw @s ["",{translate:"gp.game.spectator_view",italic:false,with:[{translate:"gp.game.spectator_view.cinematic",color:"yellow",italic:false}]}]

#reset trigger
scoreboard players reset @s spectatorView

#don't buck spectator if we weren't in spec to begin with
execute if entity @s[gamemode=adventure] run return 1
#=====

#kick out spec (only if we started in spec)
gamemode adventure @s
gamemode spectator @s