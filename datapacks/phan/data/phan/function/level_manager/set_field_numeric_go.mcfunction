#can't modify a read-only level
$execute store result score #test4 value run data get storage phan_dream_$(level_id):dream_data read_only 1
execute unless score #test4 value matches 0 run return run tellraw @s[type=player] ["",{"translate":"warning.level_is_read_only","color":"red"}]
#======

$data modify storage phan_dream_$(level_id):$(resource_location) $(nbt) set value $(value)