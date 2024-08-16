#(run by player)
#ok, so we know that the player is inside the reset zone now. let's respond accordingly

#check if we fail to meet checkpoint criteria
execute if score #resetMinCheck value matches 0.. if score @s checkFake < #resetMinCheck value run return 0
execute if score #resetMaxCheck value matches 0.. if score @s checkFake > #resetMaxCheck value run return 0
execute if score #resetMinCheck value matches 0.. if score #resetMaxCheck value matches 0.. if entity @s[tag=vsHomeStretch] run return 0

#check if we fail to meet condition criteria
#grounded
execute if score #resetCondition value matches 1 unless entity @s[scores={airTime=..1}] at @s unless entity @e[tag=dontResetNearMe,distance=..3] run return 0
#inWater
execute if score #resetCondition value matches 2 unless entity @s[scores={inWater=1..}] run return 0
#not gliding
execute if score #resetCondition value matches 3 unless entity @s[scores={fallFlying=..0}] run return 0
#gliding
execute if score #resetCondition value matches 4 unless entity @s[scores={fallFlying=1..}] run return 0


#do a respawn if we made it this far into the function
execute if score #vGameType value matches 1 if entity @s[type=player] run function phan:game/4/race/respawn
execute unless score #vGameType value matches 1 if entity @s[type=player] run function phan:game/4/battle/respawn
execute if score #vGameType value matches 1 if entity @s[tag=ai] run function phan:bots/race/respawn
execute unless score #vGameType value matches 1 if entity @s[tag=ai] run function phan:bots/battle/respawn