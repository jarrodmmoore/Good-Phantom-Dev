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

#rings
execute if score @s editNode matches 1..4 run function phan:game/1/spawning/spawn_ring_1a

#ender eye
execute if score @s editNode matches 5 run function phan:game/1/spawning/spawn_ender_eye_setup
#stardust
execute if score @s editNode matches 6 run function phan:game/1/spawning/spawn_stardust_setup
#player start
# ^ no set-up needed. we just use the node as a game object since that's more resourceful ;)
#portal core
execute if score @s editNode matches 8 run function phan:game/1/spawning/portal_core_setup
#portal slot
execute if score @s editNode matches 9 run function phan:game/1/spawning/portal_slot_setup
#clock
execute if score @s editNode matches 10 unless score #gameState value matches 3 run function phan:game/1/spawning/spawn_clock
# ^ these do NOT spawn in time attack mode!
#firework pickup
execute if score @s editNode matches 11 run function phan:game/1/spawning/spawn_firework
#present
execute if score @s editNode matches 12 run function phan:game/1/spawning/spawn_present
#baddie
execute if score @s editNode matches 13 if score @s editArg1 matches 2.. run function phan:game/1/spawning/enemy/spawn_enemy_spawner_repeat
execute if score @s editNode matches 13 if score @s editArg1 matches 1 run function phan:game/1/spawning/enemy/_index
execute if score @s editNode matches 13 if score @s editArg1 matches ..0 run function phan:game/1/spawning/enemy/spawn_enemy_spawner
#target (block)
execute if score @s editNode matches 14 run function phan:game/1/spawning/target_setup
#target (entity)
execute if score @s editNode matches 17 run function phan:game/1/spawning/spawn_big_target
#hidden music disc
execute if score @s editNode matches 24 run function phan:game/1/spawning/spawn_music_disc
#podium
execute if score @s editNode matches 25 run function phan:game/1/spawning/podium_setup


#failed to spawn? abort and try again soon
execute if entity @s[tag=spawn_failed] run return 0

#we are spawned. let the record show.
execute if entity @s[tag=nodeLoadArea0,tag=nodeArea1] run scoreboard players set @s area0SpawnA 1
execute if entity @s[tag=nodeLoadArea1,tag=nodeArea1] run scoreboard players set @s area1SpawnA 1
execute if entity @s[tag=nodeLoadArea2,tag=nodeArea1] run scoreboard players set @s area2SpawnA 1
execute if entity @s[tag=nodeLoadArea3,tag=nodeArea1] run scoreboard players set @s area3SpawnA 1
execute if entity @s[tag=nodeLoadArea4,tag=nodeArea1] run scoreboard players set @s area4SpawnA 1
execute if entity @s[tag=nodeLoadArea5,tag=nodeArea1] run scoreboard players set @s area5SpawnA 1

execute if entity @s[tag=nodeLoadArea0,tag=nodeArea2] run scoreboard players set @s area0SpawnB 1
execute if entity @s[tag=nodeLoadArea1,tag=nodeArea2] run scoreboard players set @s area1SpawnB 1
execute if entity @s[tag=nodeLoadArea2,tag=nodeArea2] run scoreboard players set @s area2SpawnB 1
execute if entity @s[tag=nodeLoadArea3,tag=nodeArea2] run scoreboard players set @s area3SpawnB 1
execute if entity @s[tag=nodeLoadArea4,tag=nodeArea2] run scoreboard players set @s area4SpawnB 1
execute if entity @s[tag=nodeLoadArea5,tag=nodeArea2] run scoreboard players set @s area5SpawnB 1

execute if entity @s[tag=nodeLoadArea0,tag=nodeArea3] run scoreboard players set @s area0SpawnC 1
execute if entity @s[tag=nodeLoadArea1,tag=nodeArea3] run scoreboard players set @s area1SpawnC 1
execute if entity @s[tag=nodeLoadArea2,tag=nodeArea3] run scoreboard players set @s area2SpawnC 1
execute if entity @s[tag=nodeLoadArea3,tag=nodeArea3] run scoreboard players set @s area3SpawnC 1
execute if entity @s[tag=nodeLoadArea4,tag=nodeArea3] run scoreboard players set @s area4SpawnC 1
execute if entity @s[tag=nodeLoadArea5,tag=nodeArea3] run scoreboard players set @s area5SpawnC 1