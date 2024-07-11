#executed by a checkpoint at its position

#make sure values exist!
scoreboard players add @s visualXoffset 0
scoreboard players add @s visualYoffset 0
scoreboard players add @s visualZoffset 0
scoreboard players add @s visualYaw 0
scoreboard players add @s visualPitch 0

#we're gonna hijack the line drawing function to get the first position
#(this function call will summon an aec at our first point)
scoreboard players set #draw_mode value -1
scoreboard players operation #temp visualXoffset = @s visualXoffset
scoreboard players operation #temp visualYoffset = @s visualYoffset
scoreboard players operation #temp visualZoffset = @s visualZoffset
scoreboard players operation #temp visualYaw = @s visualYaw
scoreboard players operation #temp visualPitch = @s visualPitch
scoreboard players set #temp visualLength 0
execute if score @s visualXoffset matches 1.. rotated 0 0 run function phan:game/4/checkpoint_visual/x/p2048
execute if score @s visualXoffset matches 0 rotated 0 0 run function phan:game/4/checkpoint_visual/y/_pos_or_neg
execute if score @s visualXoffset matches ..-1 rotated 0 0 run function phan:game/4/checkpoint_visual/x/n2048

execute as @e[tag=setme_v1] at @s run tp @s ~ ~ ~ facing entity @a[limit=1,tag=self_f] feet
execute as @e[tag=setme_v1] at @s store result score #temp visualYaw run data get entity @s Rotation[0] 1
execute as @e[tag=setme_v1] at @s store result score #temp visualPitch run data get entity @s Rotation[1] 1

scoreboard players set #temp visualLength 0
execute at @e[tag=setme_v1,limit=1] run function phan:editor/checkpoint/find_line_length_recursion

scoreboard players operation @s visualYaw = #temp visualYaw
scoreboard players operation @s visualPitch = #temp visualPitch
scoreboard players operation @s visualLength = #temp visualLength

scoreboard players set @e[tag=setme_v1] lifespan 1
tag @e[tag=setme_v1] remove setme_v1