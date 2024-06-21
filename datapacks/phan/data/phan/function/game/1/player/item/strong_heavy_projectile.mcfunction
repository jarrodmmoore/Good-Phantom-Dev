scoreboard players remove @s energy 2

#feedback
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1 1.8
playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.8

#figure out where to spawn the projectile so it appears to come out of our eyes
function phan:game/1/player/item/determine_projectile_spawn_location

#summon based on the position we picked
execute if score #test value matches 0 run summon armor_stand ~ ~ ~ {Tags:["setLife","projectile","projectileHeavy","strongerProjectile"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,0.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:light_blue_dye",count:1,components:{"minecraft:custom_model_data":1111114}}]}
execute if score #test value matches 1 run summon armor_stand ~ ~-1.1 ~ {Tags:["setLife","projectile","projectileHeavy","strongerProjectile"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,0.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:light_blue_dye",count:1,components:{"minecraft:custom_model_data":1111114}}]}
execute if score #test value matches 0 positioned ~ ~1.8 ~ run particle dust{color:[1,0,0],scale:1} ^ ^ ^2 0.25 0.25 0.25 0 5 force
execute if score #test value matches 1 positioned ~ ~0.7 ~ run particle dust{color:[1,0,0],scale:1} ^ ^ ^2 0.25 0.25 0.25 0 5 force
scoreboard players operation @e[tag=setLife] playerID = @s playerID
execute if score #test value matches 0 at @s run tp @e[tag=setLife,type=armor_stand] ~ ~ ~ ~ ~
execute if score #test value matches 1 at @s positioned ~ ~-1.1 ~ run tp @e[tag=setLife,type=armor_stand] ~ ~ ~ ~ ~
scoreboard players set @e[tag=setLife] lifespan 200
tag @e[tag=setLife] remove setLife

scoreboard players set @s inputCooldownB 15
scoreboard players set @s bufferInput3 0
scoreboard players reset @s carrotInput