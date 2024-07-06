#battle mode

#count active players
execute store result score #activeBattlePlayers value run execute if entity @a[tag=playing]


#run a lot of player-specific logic here
execute as @a[tag=playing] at @s run function phan:game/4/battle/battle_player_tick

#start assigning positions at the set minimum value
#(this increments if somebody finishes and is no longer looking at checkpoints)
scoreboard players operation #positionAssign value = #positionAssignMin value

#players with enough eyes to enter the portal are in the home stretch. give them position solely based on distance to the portal
execute if score #vsHomeStretch value matches 1 as @e[type=marker,tag=portalCore,scores={versusSpawn=1},limit=1] at @s run function phan:game/4/race/portal_core_home_stretch

#assign rank based on how many eyes we have
scoreboard players add @a[tag=playing] racePosCalc 0
function phan:game/4/battle/assign_ranks_eyes

#handle reset zones
execute as @e[type=marker,tag=resetZone,scores={versusSpawn=1}] at @s run function phan:game/4/battle/reset_zone

#every 2 seconds, put a bogus entry into each player's list of recently collected rings (this acts like a sort of ring cooldown)
execute if score #2sec value matches 11 as @a[tag=playing] run function phan:game/4/objects/ring_collect_bogus

#player position
function phan:game/4/battle/publish_positions

#draw ever eyes in portal slots (using block marker particle so it looks different per each client)
execute if score #2sec value matches 6 as @e[type=marker,tag=portalSlot,scores={versusSpawn=1}] at @s run function phan:game/4/race/portal/draw_eye_index

#draw particles above portal to attract players there when they're in the home-stretch
execute if score #vsHomeStretch value matches 1 as @e[type=marker,tag=portalCore,scores={versusSpawn=1}] at @s run function phan:game/4/portal_particle_home_stretch

#=====
#ITEMS

#item box nodes count down and spawn box
execute if score #5Hz value matches 2 as @e[type=marker,tag=itemBoxSpawner,scores={versusSpawn=1}] at @s run function phan:game/4/item_box_node

#ever eye nodes count down
execute if score #5Hz value matches 2 as @e[type=marker,tag=vsEyeSpawner,scores={versusSpawn=1}] at @s run function phan:game/4/eye_spawner_node

#make sure there are at least a few ever eyes on the field
execute if score #5Hz value matches 1 run function phan:game/4/battle/manage_eye_spawners

#=====
#GAME FUNCTION

#allow mid-game joins if player have the trigger
execute if score #subGameState value matches ..0 as @a[scores={joinGame=1..}] run function phan:game/4/race/join_trigger

#count down time remaining
execute if score #subGameState value matches 0 run function phan:game/4/battle/time_limit

#time out when no players left
execute if entity @a[tag=playing] run scoreboard players set #vTimeOut value 0
scoreboard players add #vTimeOut value 1
execute if score #subGameState value matches 0 if score #vTimeOut value matches 60.. run scoreboard players set #subGameState value 1

#show end results when subGameState=1
execute if score #gameState value matches 4 if score #subGameState value matches 1 run function phan:game/4/battle/results_sequence

#=====