scoreboard players add @s age 1
scoreboard players set @s lifespan 5

#i am i
tag @s add anvilEnt

#identify target player
scoreboard players operation #getID value = @s playerID
execute unless entity @s[tag=lostTarget] as @a[tag=doneWithIntro,tag=!playerReservation,distance=..10] if score @s playerID = #getID value run tag @s add anvilTarget
execute if score #botsEnabled value matches 1.. unless entity @s[tag=lostTarget] as @e[tag=ai,type=zombie,distance=..10] if score @s playerID = #getID value run tag @s add anvilTarget
#recognize when we've lost the plot
execute if score #botsEnabled value matches ..0 unless entity @s[tag=lostTarget] unless entity @a[tag=anvilTarget,distance=..10] run tag @s add lostTarget
execute if score #botsEnabled value matches 1.. unless entity @s[tag=lostTarget] unless entity @e[tag=anvilTarget,distance=..10] run tag @s add lostTarget

#follow target's position (initially above target, gets lowered when the anvil is about to impact)
scoreboard players operation #anvilAge value = @s age
execute unless entity @s[tag=lostTarget] as @a[tag=anvilTarget,limit=1,distance=..10] run function phan:items/anvil_entity_follow_player
execute if score #botsEnabled value matches 1.. unless entity @s[tag=lostTarget] as @e[tag=anvilTarget,limit=1,distance=..10] run function phan:items/anvil_entity_follow_player

#impact if we're on the ground and we lost the target
execute if entity @s[tag=lostTarget] if entity @s[nbt={OnGround:1b}] run tag @s add anvilImpact

#impact at age 67
execute unless entity @s[tag=lostTarget] if score @s age matches 67.. run tag @s add anvilImpact


#impact!
execute if entity @s[tag=anvilImpact] run function phan:items/anvil_entity_impact


#die after 6sec
execute if entity @s[tag=lostTarget] if score @s age matches 120.. run scoreboard players set @s lifespan 1

#clean up tags
execute if score #botsEnabled value matches ..0 run tag @a[tag=anvilTarget,distance=..10] remove anvilTarget
execute if score #botsEnabled value matches 1.. run tag @e[tag=anvilTarget,distance=..10] remove anvilTarget
tag @s remove anvilEnt