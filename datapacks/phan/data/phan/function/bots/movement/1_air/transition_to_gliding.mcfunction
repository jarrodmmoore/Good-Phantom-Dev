scoreboard players set @s botMoveState 2
scoreboard players set @s fallFlying 1
#data merge entity @s {FallFlying:1b}

#enter improvised flight if we were trying to vault upwards
execute if score @s botVaultUpwardTime matches 1.. run tag @s add botImprovFlight

#get velocity so we can apply it to the armor stand
execute store result score #xVelocity value run data get entity @s Motion[0] 100000
execute store result score #yVelocity value run data get entity @s Motion[1] 100000
execute store result score #zVelocity value run data get entity @s Motion[2] 100000

#summon armor stand and ride it
summon armor_stand ~ ~ ~ {Tags:["botElytra","setMe"],FallFlying:1b,Silent:1b,Invulnerable:1b,Small:0b,Invisible:1b,NoBasePlate:1b,attributes:[{id:"minecraft:generic.scale",base:0.0625}],DisabledSlots:4144959,Passengers:[{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["setMe2","botElytraHeightFix"]}],ArmorItems:[{},{},{id:"minecraft:elytra",count:1,components:{"minecraft:unbreakable":{}}},{}]}
ride @s mount @e[limit=1,tag=setMe2,type=armor_stand,distance=..1]
execute as @e[tag=setMe,type=armor_stand,distance=..1] run function phan:bots/movement/1_air/transition_to_gliding_post_summon

#look the right way?
tp @s ~ ~ ~ ~ ~

#clean-up
tag @s remove botFlyWhenInAir