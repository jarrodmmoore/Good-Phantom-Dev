#(run by player)
#ok, so we know that the player is inside the reset zone now. let's respond accordingly

#check if we fail to meet condition criteria
#grounded
execute if score #resetCondition value matches 1 unless entity @s[scores={airTime=..1}] run return 0
#inWater
execute if score #resetCondition value matches 2 unless entity @s[scores={inWater=1..}] run return 0
#not gliding
execute if score #resetCondition value matches 3 unless entity @s[scores={fallFlying=..0}] run return 0
#gliding
execute if score #resetCondition value matches 4 unless entity @s[scores={fallFlying=1..}] run return 0


#do a respawn if we made it this far into the function
function phan:game/4/battle/respawn