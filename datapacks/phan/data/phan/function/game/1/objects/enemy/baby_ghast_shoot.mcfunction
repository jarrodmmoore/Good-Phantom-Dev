#feedback
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 3.6 1.6

#summon
execute if score #assist_enemies value matches 0 run summon armor_stand ~ ~-1.5 ~ {Tags:["setLife","projectile","evilLight","shootable","evilProjectile"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,0.0f,0.0f]},equipment:{head:{id:"minecraft:light_blue_dye",count:1,components:{"item_model":"gp/item_entity/projectile_light_evil"}}}}
execute if score #assist_enemies value matches 1.. run summon armor_stand ~ ~-1.5 ~ {Tags:["setLife","projectile","evilHeavy","shootable","evilProjectile"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,0.0f,0.0f]},equipment:{head:{id:"minecraft:light_blue_dye",count:1,components:{"item_model":"gp/item_entity/projectile_heavy_evil"}}}}
tp @e[tag=setLife,type=armor_stand,distance=..2] ~ ~-1.5 ~ ~ ~
scoreboard players set @e[tag=setLife,type=armor_stand,distance=..2] lifespan 120
tag @e[tag=setLife,type=armor_stand,distance=..2] remove setLife

#make an angry face
scoreboard players set @s editArg3 11

#cooldown
scoreboard players set @s editArg2 1
execute if score #assist_enemies value matches 1.. run scoreboard players set @s editArg2 -9