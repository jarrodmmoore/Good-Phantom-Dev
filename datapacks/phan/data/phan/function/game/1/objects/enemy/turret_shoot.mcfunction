#feedback
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 3.6 1.5

#summon
summon armor_stand ~ ~-1.6 ~ {Tags:["setLife","projectile","evilHeavy","evilProjectile"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,0.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:light_blue_dye",count:1,components:{"minecraft:custom_model_data":1111114}}]}
tp @e[tag=setLife,type=armor_stand] ~ ~-1.6 ~ ~ ~
scoreboard players set @e[tag=setLife] lifespan 120
tag @e[tag=setLife] remove setLife

#cooldown
scoreboard players set @s editArg2 1
execute if score #assist_enemies value matches 1.. run scoreboard players set @s editArg2 -7