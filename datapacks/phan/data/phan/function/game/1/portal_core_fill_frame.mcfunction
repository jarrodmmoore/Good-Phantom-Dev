scoreboard players remove #pearlsNeeded value 1
scoreboard players remove @s enderEyes 1

#one of our goons will handle this
execute as @e[tag=portalSlot,distance=..20,scores={editArg1=0},limit=1,sort=random] at @s run function phan:game/1/portal_slot_fill

#all players in this act get a combo bump for this
execute if score #portalInAct value matches 1 if score #actTimeElapsed value matches 10.. as @a[tag=playing,gamemode=adventure,scores={pCurrentArea=1}] at @s run function phan:game/1/player/score_portal_slot_filled
execute if score #portalInAct value matches 2 if score #actTimeElapsed value matches 10.. as @a[tag=playing,gamemode=adventure,scores={pCurrentArea=2}] at @s run function phan:game/1/player/score_portal_slot_filled
execute if score #portalInAct value matches 3 if score #actTimeElapsed value matches 10.. as @a[tag=playing,gamemode=adventure,scores={pCurrentArea=3}] at @s run function phan:game/1/player/score_portal_slot_filled

#cooldown for this
scoreboard players set @s editArg1 4
execute if score #gameState value matches 3 run scoreboard players set @s editArg1 2