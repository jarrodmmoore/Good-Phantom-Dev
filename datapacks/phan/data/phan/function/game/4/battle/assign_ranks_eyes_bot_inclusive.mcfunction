scoreboard players set #maxEyes value -1
scoreboard players set #test value 0

#find max eyes among active un-ranked players
execute as @a[tag=playing,tag=!vsHomeStretch,scores={racePosCalc=0}] run function phan:game/4/battle/assign_ranks_eyes_get_max
execute as @e[tag=ai,type=zombie,tag=!vsHomeStretch,scores={racePosCalc=0}] run function phan:game/4/battle/assign_ranks_eyes_get_max
execute if score #checkDoMissingPlayers0 value matches 1.. as @e[type=block_display,tag=botEntityMissing,tag=!vsHomeStretch,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={racePosCalc=0}] run function phan:game/4/battle/assign_ranks_eyes_get_max

#players who match max eye count get position
execute as @a[tag=playing,tag=!vsHomeStretch,scores={racePosCalc=0}] if score @s enderEyes = #maxEyes value run function phan:game/4/battle/assign_ranks_eyes_get_rank
execute as @e[tag=ai,type=zombie,tag=!vsHomeStretch,scores={racePosCalc=0}] if score @s enderEyes = #maxEyes value run function phan:game/4/battle/assign_ranks_eyes_get_rank
execute if score #checkDoMissingPlayers0 value matches 1.. as @e[type=block_display,tag=botEntityMissing,tag=!vsHomeStretch,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={racePosCalc=0}] if score @s enderEyes = #maxEyes value run function phan:game/4/battle/assign_ranks_eyes_get_rank
scoreboard players operation #positionAssign value += #test value

#recursion until we're done (note the @e here! this is bot inclusive!)
execute if entity @e[tag=playing,tag=!vsHomeStretch,scores={racePosCalc=0,enderEyes=0..}] run return run function phan:game/4/battle/assign_ranks_eyes_bot_inclusive

#also do recursion if there's un-ranked botControllers who requested a rank
execute if score #checkDoMissingPlayers0 value matches 1.. if entity @e[type=block_display,tag=botEntityMissing,tag=!vsHomeStretch,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={racePosCalc=0,enderEyes=0..}] run return run function phan:game/4/battle/assign_ranks_eyes_bot_inclusive


#didn't return this time? clear the missing players flag
scoreboard players set #checkDoMissingPlayers0 value 0