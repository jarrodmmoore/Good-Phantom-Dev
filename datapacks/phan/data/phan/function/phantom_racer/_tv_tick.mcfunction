#executed 20x per second while a player is in the den area
#executed at 246 -7 118, which is the center of the tv screen


#run nothing if not in gameState 0
execute unless score #gameState value matches 0 run return 0
#=====

#clear inputs, read them soon
scoreboard players set #tvInputLR value 0
scoreboard players set #tvInputUD value 0
scoreboard players set #tvInputJumpImpulse value 0
scoreboard players set #tvInputJump value 0

#handle player controlling the menu
execute if score #tvControlState value matches 0 run function phan:phantom_racer/listen_for_controlling_player
execute if score #tvControlState value matches 1 run function phan:phantom_racer/handle_player_control

#re-light the redstone line if it went out
execute if score #10Hz value matches 0 if block 245 -11 117 air run setblock 245 -11 117 redstone_torch

#load a menu page when requested
execute if score #tvLoadImpulse value matches 1.. run function phan:phantom_racer/menu/_load_index

#ticking functions
execute if score #tvCooldown value matches 1.. run scoreboard players remove #tvCooldown value 1
function phan:phantom_racer/menu/_tick_index