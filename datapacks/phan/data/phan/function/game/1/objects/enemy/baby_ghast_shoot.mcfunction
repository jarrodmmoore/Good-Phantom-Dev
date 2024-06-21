#feedback
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 3.6 1.6

#summon
execute if score #assist_enemies value matches 0 run summon armor_stand ~ ~-1.5 ~ {Tags:["setLife","projectile","evilLight","shootable","evilProjectile"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,0.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:light_blue_dye",count:1,components:{"minecraft:custom_model_data":1111113}}]}
execute if score #assist_enemies value matches 1.. run summon armor_stand ~ ~-1.5 ~ {Tags:["setLife","projectile","evilHeavy","shootable","evilProjectile"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,0.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:light_blue_dye",count:1,components:{"minecraft:custom_model_data":1111114}}]}
tp @e[tag=setLife,type=armor_stand] ~ ~-1.5 ~ ~ ~
scoreboard players set @e[tag=setLife] lifespan 120
tag @e[tag=setLife] remove setLife

#make an angry face
scoreboard players set @s editArg3 11

#cooldown
scoreboard players set @s editArg2 1
execute if score #assist_enemies value matches 1.. run scoreboard players set @s editArg2 -9