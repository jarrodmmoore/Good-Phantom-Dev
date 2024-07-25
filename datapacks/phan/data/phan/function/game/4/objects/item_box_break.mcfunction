scoreboard players operation #thisBoxID value = @s boxID

#tell spawner node to spawn a new box
execute as @e[type=marker,tag=itemBoxSpawner,scores={versusSpawn=1}] if score @s boxID = #thisBoxID value run scoreboard players operation @s age = #BOXRESPAWNTIME value

#we die.
particle block{block_state:"magenta_concrete"} ~ ~.5 ~ 0.3 0.3 0.3 1 20
playsound minecraft:block.wood.break master @a ~ ~ ~ 1.8 1
scoreboard players set @s lifespan 1
tag @s remove itemBox