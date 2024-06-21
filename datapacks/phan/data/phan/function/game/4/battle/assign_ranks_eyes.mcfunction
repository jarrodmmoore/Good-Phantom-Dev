scoreboard players set #maxEyes value -1
scoreboard players set #test value 0

#find max eyes among active unranked players
execute as @a[tag=playing,tag=!vsHomeStretch,scores={racePosCalc=0}] run function phan:game/4/battle/assign_ranks_eyes_get_max

#players who match max eye count get position
execute as @a[tag=playing,tag=!vsHomeStretch,scores={racePosCalc=0}] if score @s enderEyes = #maxEyes value run function phan:game/4/battle/assign_ranks_eyes_get_rank
scoreboard players operation #positionAssign value += #test value

#recursion until we're done
execute if entity @a[tag=playing,tag=!vsHomeStretch,scores={racePosCalc=0,enderEyes=0..}] run function phan:game/4/battle/assign_ranks_eyes