#only creative players may inspect this dream
scoreboard players operation @a[distance=..4,gamemode=creative] nearPlayer = @s nearPlayer

#inform non-creative players that this dream in not selectable
scoreboard players add @s age 1
execute if score @s age matches 101.. run scoreboard players set @s age 1
execute if score @s age matches ..50 run title @a[distance=..4,gamemode=!creative] actionbar ["",{"translate":"gp.enter_creative_mode_to_edit"}]
execute if score @s age matches 51.. run title @a[distance=..4,gamemode=!creative] actionbar ["",{"translate":"gp.dream_is_unselectable"}]
scoreboard players set @a[distance=..4,gamemode=!creative] actionbarDelay 10