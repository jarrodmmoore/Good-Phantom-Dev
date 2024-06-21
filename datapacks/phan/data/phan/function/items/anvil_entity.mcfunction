scoreboard players add @s age 1
scoreboard players set @s lifespan 5

#i am i
tag @s add anvilEnt

#identify target player
scoreboard players operation #getID value = @s playerID
execute unless entity @s[tag=lostTarget] as @a[tag=doneWithIntro,tag=!playerReservation,distance=..10] if score @s playerID = #getID value run tag @s add anvilTarget
#recognize when we've lost the plot
execute unless entity @s[tag=lostTarget] unless entity @a[tag=anvilTarget] run tag @s add lostTarget

#follow target's positon
scoreboard players operation #anvilAge value = @s age
execute unless entity @s[tag=lostTarget] as @a[tag=anvilTarget,limit=1] run function phan:items/anvil_entity_follow_player

#impact if we're on the ground at we lost the target
execute if entity @s[tag=lostTarget] if entity @s[nbt={OnGround:1b}] run tag @s add anvilImpact

#do stuff over time
execute unless entity @s[tag=lostTarget] if score @s age matches 67.. run tag @s add anvilImpact


#impact!
execute if entity @s[tag=anvilImpact] run function phan:items/anvil_entity_impact


#die after 6sec
execute if entity @s[tag=lostTarget] if score @s age matches 120.. run scoreboard players set @s lifespan 1

#clean up tags
tag @a[tag=anvilTarget] remove anvilTarget
tag @s remove anvilEnt