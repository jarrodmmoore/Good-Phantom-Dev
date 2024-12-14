#clean up tag from previous failure
tag @s[tag=spawn_failed] remove spawn_failed

#don't have an editNode score? load it from our NBT backup
execute unless score @s editNode matches -2147483648..2147483647 run function phan:editor/restore_using_nbt/node_standard
#still no data? exit out
execute unless score @s editNode matches -2147483648..2147483647 run return 0
#=====


#spawn a game object or set something up based on what we represent

#rings
execute if score @s editNode matches 1..4 run function phan:game/1/spawning/spawn_ring_1a

#ender eye
#execute if score @s editNode matches 5 run function phan:game/1/spawning/spawn_ender_eye_setup
#stardust
execute if score @s editNode matches 6 run function phan:game/1/spawning/spawn_stardust_setup
#player start
# ^ no set-up needed. we just use the node as a game object since that's more resourceful ;)
#portal core
execute if score @s editNode matches 8 run function phan:game/1/spawning/portal_core_setup
#portal slot
execute if score @s editNode matches 9 run function phan:game/1/spawning/portal_slot_setup
#clock
#execute if score @s editNode matches 10 unless score #gameState value matches 3 run function phan:game/1/spawning/spawn_clock
#firework pickup
execute if score @s editNode matches 11 run function phan:game/1/spawning/spawn_firework
#present
execute if score @s editNode matches 12 run function phan:game/1/spawning/spawn_present
#baddie
execute if score @s editNode matches 13 if score @s editArg1 matches 1.. run function phan:game/1/spawning/enemy/_index
execute if score @s editNode matches 13 if score @s editArg1 matches ..0 run function phan:game/1/spawning/enemy/spawn_enemy_spawner
#target (block)
execute if score @s editNode matches 14 run function phan:game/1/spawning/target_setup
#item box
execute if score @s editNode matches 15 run function phan:game/4/spawning/setup_item_box
#target (entity)
execute if score @s editNode matches 17 run function phan:game/1/spawning/spawn_big_target
#checkpoint
execute if score @s editNode matches 18 run function phan:game/4/spawning/setup_checkpoint
#player start (vs)
execute if score @s editNode matches 19 run scoreboard players set @s editArg3 0
#ever eye spawner
execute if score @s editNode matches 23 run function phan:game/4/spawning/setup_eye_spawner
#hidden music disc
execute if score @s editNode matches 24 run function phan:game/1/spawning/spawn_music_disc
#podium
execute if score @s editNode matches 25 run function phan:game/1/spawning/podium_setup

#failed to spawn? abort and try again soon
execute if entity @s[tag=spawn_failed] run return 0

#we are spawned. let the record show.
scoreboard players set @s versusSpawn 1