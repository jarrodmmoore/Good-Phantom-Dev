#it's tradition at this point


#clean up tag from previous failure
tag @s[tag=spawn_failed] remove spawn_failed

#do nothing if our chunk isn't loaded
execute unless loaded ~ ~ ~ run return 0

#don't have an editNode score? load it from our NBT backup
execute unless score @s editNode matches -2147483648..2147483647 run function phan:editor/restore_using_nbt/node_standard
#still no data? exit out
execute unless score @s editNode matches -2147483648..2147483647 run return 0
#=====


#spawn a game object or set something up based on what we represent

#...
#podium
execute if score @s editNode matches 25 run function phan:game/5/spawning/podium_setup
execute if score @s editNode matches 26 run function phan:game/5/spawning/spawn_podium_camera
#...

#yep, just the podium and camera. we do not care about anything else


#failed to spawn? abort and try again soon
execute if entity @s[tag=spawn_failed] run return 0

#we are spawned. let the record show.
scoreboard players set @s versusSpawn 1