#executed by the vehicle armor stand that does our elytra gliding

#face the target
function phan:bots/movement/2_gliding/face_target with storage phan:coords
#passengers also face target (yes, the order matters here!) via /rotate
execute rotated as @s on passengers if entity @s[tag=botElytraHeightFix] run rotate @s ~ ~

#perish if we're somewhere we shouldn't be
scoreboard players add @s age 1
execute positioned ~ ~-.2 ~ unless block ~ ~ ~ lava unless block ~ ~ ~ water unless block ~ ~ ~ #phan:waterloggable[waterlogged=true] unless block ~ ~ ~ #minecraft:slabs[waterlogged=true] unless block ~ ~ ~ #minecraft:stairs[waterlogged=true] unless block ~ ~ ~ #minecraft:coral_plants[waterlogged=true] unless block ~ ~ ~ tall_seagrass run scoreboard players set #success value 1
execute if score @s age matches 10.. rotated ~ 0 unless block ^ ^ ^.15 #phan:not_solid run scoreboard players set #success value 0
execute if score @s age matches 10.. unless block ~ ~-.2 ~ #phan:not_solid run scoreboard players set #success value 0

#check if we're not moving for some reason
execute store result score #testY value run data get entity @s Motion[1] 100
execute if score #testY value matches 0 run function phan:bots/movement/2_gliding/check_if_vehicle_stuck
execute unless score #testY value matches 0 run scoreboard players set @s botTimeSinceFlightProgress 0

#stay alive
scoreboard players set @s lifespan 5
execute on passengers if entity @s[tag=botElytraHeightFix] run scoreboard players set @s lifespan 5