#cycle through the options
scoreboard players add @s spectateMode 1
execute if score @s spectateMode matches 2.. run scoreboard players set @s spectateMode 0

#kick out spec
gamemode adventure @s
gamemode spectator @s

#feedback
playsound minecraft:block.note_block.cow_bell master @s ~ 100000 ~ 100000 2
tellraw @s ["",{"text":" "}]
execute if score @s spectateMode matches ..0 run tellraw @s ["",{"translate":"gp.game.spectator_view","italic":false,"with":[{"translate":"gp.game.spectator_view.player_pov","color":"yellow","italic":false}]}]
execute if score @s spectateMode matches 1 run tellraw @s ["",{"translate":"gp.game.spectator_view","italic":false,"with":[{"translate":"gp.game.spectator_view.free_cam","color":"yellow","italic":false}]}]
execute if score @s spectateMode matches 2 run tellraw @s ["",{"translate":"gp.game.spectator_view","italic":false,"with":[{"translate":"gp.game.spectator_view.cinematic","color":"yellow","italic":false}]}]

#reset trigger
scoreboard players reset @s spectatorView