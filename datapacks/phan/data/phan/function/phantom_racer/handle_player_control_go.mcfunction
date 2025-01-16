#if we're idle, kick us off
execute if score @s idleTime matches 3600.. run return 0
#=====

#also kick off if we're not admin
execute if score #requireAdmin value matches 1.. if entity @s[tag=!admin] run return 0
#=====

#poll inputs
execute if predicate phan:w run scoreboard players add #tvInputUD value 1
execute if predicate phan:s run scoreboard players remove #tvInputUD value 1

execute if predicate phan:d run scoreboard players add #tvInputLR value 1
execute if predicate phan:a run scoreboard players remove #tvInputLR value 1

execute if predicate phan:jump run scoreboard players add #tvInputJump value 1
execute if score #tvInputJump value matches 1.. if score #tvInputJumpPrev value matches ..0 run scoreboard players set #tvInputJumpImpulse value 1
scoreboard players operation #tvInputJumpPrev value = #tvInputJump value

#we exist and ran this function
scoreboard players set #success value 1