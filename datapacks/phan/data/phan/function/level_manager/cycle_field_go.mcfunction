#can't modify a read-only level
$execute store result score #test4 value run data get storage phan_dream_$(level_id):dream_data read_only 1
execute unless score #test4 value matches 0 run return run tellraw @s[type=player] ["",{"translate":"warning.level_is_read_only","color":"red"}]
#======

$scoreboard players set #offset value $(offset)

#read storage into score
$execute store result score #test value run data get storage phan_dream_$(level_id):$(resource_location) $(nbt) 1
#add 1, then modulus by whatever the "mod" argument was
scoreboard players add #test value 1
scoreboard players operation #test value -= #offset value
$scoreboard players set #mod value $(mod)
scoreboard players operation #test value %= #mod value
scoreboard players operation #test value += #offset value
#copy new score back into storage
$execute store result storage phan_dream_$(level_id):$(resource_location) $(nbt) int 1 run scoreboard players get #test value
