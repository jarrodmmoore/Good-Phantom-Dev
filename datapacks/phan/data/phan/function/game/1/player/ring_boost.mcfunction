scoreboard players set #test value 0
execute if entity @s[scores={fallFlying=1,airTime=2..}] run scoreboard players set #test value 1

#get explosion boost if flying with elytra
execute if score #test value matches 1 run effect give @s resistance 1 100 true
execute if score #test value matches 1 at @s rotated ~ 0 run summon creeper ^ ^0.35 ^-0.2 {Fuse:0}

#don't mess up the velocity of other nearby flying players. teleport them to us so they also get the boost
tag @s add boostSelf
#note that the proper value for "#thisRingID" is still in memory so we can use it to tell nearby players not to re-collect this ring and cause ANOTHER boost
execute if score #gameState value matches 4 at @s as @a[gamemode=adventure,tag=!boostSelf,scores={fallFlying=1},distance=..5] run function phan:game/4/objects/ring_record_collected
execute if score #test value matches 1 at @s as @a[gamemode=adventure,tag=!boostSelf,scores={fallFlying=1},distance=..5] run tp @s ~ ~ ~ ~ ~
tag @s remove boostSelf

#get normal boost on ground or in water
execute if score #test value matches 0 run function phan:movement/speed_pad_super

#feedback
particle falling_dust{block_state:"diamond_block"} ~ ~1 ~ 0.4 0.4 0.4 1 20
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0.7
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 5 1
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 5 1.2