scoreboard players remove @s energy 1

#feedback
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1 2

#figure out where to spawn the projectile so it appears to come out of our eyes
function phan:game/1/player/item/determine_projectile_spawn_location

#summon based on the position we picked
execute if score #test value matches 0 run summon armor_stand ~ ~ ~ {Tags:["setLife","projectile","projectileLight"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,0.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:light_blue_dye",count:1,components:{"minecraft:custom_model_data":1111111}}]}
execute if score #test value matches 1 run summon armor_stand ~ ~-1.1 ~ {Tags:["setLife","projectile","projectileLight"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,0.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:light_blue_dye",count:1,components:{"minecraft:custom_model_data":1111111}}]}
scoreboard players operation @e[tag=setLife] playerID = @s playerID
execute if score #test value matches 0 at @s run tp @e[tag=setLife,type=armor_stand] ~ ~ ~ ~ ~
execute if score #test value matches 1 at @s positioned ~ ~-1.1 ~ run tp @e[tag=setLife,type=armor_stand] ~ ~ ~ ~ ~
scoreboard players set @e[tag=setLife] lifespan 120
tag @e[tag=setLife] remove setLife

scoreboard players set @s inputCooldownB 10
scoreboard players set @s bufferInput2 0
scoreboard players reset @s carrotInput