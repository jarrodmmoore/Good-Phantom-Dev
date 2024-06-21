#(run by player)
#ok, so we know that the player is inside the checkpoint now. let's respond accordingly

#do nothing if we're not in adventure mode
execute if entity @s[type=player] if entity @s[gamemode=!adventure] run return 0



scoreboard players set #doRespawn value 0


#figure out what number checkpoint we're supposed to have
scoreboard players operation #desiredValue value = #checkpointNum value
scoreboard players remove #desiredValue value 1

#grant checkpoint if we hit the exact desired value
execute if score @s check = #desiredValue value run function phan:game/4/race/checkpoint/player_hit_checkpoint_real

#respawn the player if they're below the required value AND we are a "checkWarn" checkpoint
execute if score #checkWarn value matches 1.. if score @s check < #desiredValue value if score @s checkFake matches 1.. run scoreboard players set #doRespawn value 1

#respawn the player if they went backwards AND we are a "checkWrongWay" checkpoint
execute if score #checkWrongWay value matches 1.. if score @s checkFake > #checkpointNum value run scoreboard players set #doRespawn value 1


#do a respawn if we requested one
execute if score #doRespawn value matches 1.. if score @s inputCooldownB matches ..0 unless entity @s[tag=vsHomeStretch] run function phan:game/4/race/respawn