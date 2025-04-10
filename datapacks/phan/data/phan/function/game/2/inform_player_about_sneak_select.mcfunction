execute if entity @s[tag=sneaking] run title @s actionbar ["",{translate:"gp.lobby.sneak_to_play_individual_level",italic:true,with:[{keybind:"key.sneak",color:"aqua"}]}]
execute unless entity @s[tag=sneaking] run title @s actionbar [""]
scoreboard players set @s actionbarDelay 3