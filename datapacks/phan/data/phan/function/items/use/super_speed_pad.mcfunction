clear @s[type=player] cyan_dye[custom_data~{superSpeedPad:1b}] 1

playsound minecraft:block.metal.place master @a ~ ~ ~ 2 1.3
playsound minecraft:block.metal.place master @a ~ ~ ~ 2 1.1

#snap player to some y coordinate
scoreboard players set #test value 0
execute store result score #coord_y value run data get entity @s Pos[1] 1
execute store result score #coord_y2 value run data get entity @s Pos[1] 10
scoreboard players operation #coord_y2 value %= #10 value
execute if score #coord_y2 value matches 5.. run scoreboard players set #test value 2
execute if block ~ ~ ~ #minecraft:slabs[type=bottom] run scoreboard players set #test value 1
execute if score #test value matches 2 run scoreboard players add #coord_y value 1
#store desired coodinate
execute store result storage phan:coords coord_y int 1 run scoreboard players get #coord_y value
execute unless score #test value matches 1 run data modify storage phan:coords coord_y2 set value 0
execute if score #test value matches 1 run data modify storage phan:coords coord_y2 set value 5

#put us at a nice y coordinate so we can use this thing right away
function phan:items/use/speed_pad_part2 with storage phan:coords
#why are we using macros? because relative coordinates won't cancel our y velocity

#bot: force cancel y velocity and become grounded
execute if entity @s[tag=ai] unless score @s botMoveState matches 3 run function phan:bots/items/7_speed_pad/cancel_y_velocity

#spawn speed pad
execute at @s run summon armor_stand ~ ~ ~ {Tags:["tickObject","superSpeedPadEntity","giveID","hurtful","dontResetNearMe","speedPadCount"],attributes:[{id:"minecraft:scale",base:0.0625}],Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:0,block:15},Tags:["setLife","botObjectOfInterest","speedPadDisplay"],item_display:"head",item:{id:"minecraft:cyan_dye",count:1b,components:{"custom_model_data":1111114}}}]}
execute at @s as @e[type=armor_stand,tag=giveID,distance=..4] run tp @s ~ ~ ~ ~ ~
execute as @e[type=armor_stand,tag=giveID,distance=..4] at @s on passengers run rotate @s ~ 0

#get a unique ID (for bot temporary target system)
scoreboard players add #uniqieBoxID value 1
execute if score #uniqieBoxID value matches 0 run scoreboard players add #uniqieBoxID value 1
scoreboard players operation @e[tag=setLife,type=item_display,distance=..4] ringID = #uniqieBoxID value

#spawn temporary barriers to stand on
execute at @s rotated ~ 0 positioned ^ ^ ^1 positioned ~.5 ~-.7 ~.5 if block ~ ~ ~ air unless block ~ ~-1 ~ #phan:no_barrier_griefing run function phan:items/use/speed_pad_temporary_floor
execute at @s rotated ~ 0 positioned ^ ^ ^1 positioned ~-.5 ~-.7 ~.5 if block ~ ~ ~ air unless block ~ ~-1 ~ #phan:no_barrier_griefing run function phan:items/use/speed_pad_temporary_floor
execute at @s rotated ~ 0 positioned ^ ^ ^1 positioned ~-.5 ~-.7 ~-.5 if block ~ ~ ~ air unless block ~ ~-1 ~ #phan:no_barrier_griefing run function phan:items/use/speed_pad_temporary_floor
execute at @s rotated ~ 0 positioned ^ ^ ^1 positioned ~.5 ~-.7 ~-.5 if block ~ ~ ~ air unless block ~ ~-1 ~ #phan:no_barrier_griefing run function phan:items/use/speed_pad_temporary_floor

#cancel elytra flight
execute if entity @s[type=player,scores={fallFlying=1}] run clear @s elytra[custom_data~{playerEquipment:1b}]

#get boost immediately
scoreboard players set @s speedDecayDelay 0
execute at @s run function phan:movement/speed_pad_super

#entity can only exist in this current game session
scoreboard players set @e[tag=giveID,type=armor_stand,distance=..4] itemValidSpawn 1

#we did this. it was us.
scoreboard players operation @e[limit=1,tag=giveID,type=armor_stand,distance=..4] playerID = @s playerID
scoreboard players set @e[tag=setLife,type=item_display,distance=..4] lifespan 3
scoreboard players set @e[tag=giveID,type=armor_stand,distance=..4] lifespan 300
tag @e[limit=1,tag=giveID,type=armor_stand,distance=..4] remove giveID
tag @e[tag=setLife,type=item_display,distance=..4] remove setLife

#cooldown
scoreboard players reset @s carrotInput
scoreboard players set @s inputCooldown 10