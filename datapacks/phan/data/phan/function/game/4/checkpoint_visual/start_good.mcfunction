scoreboard players set #draw_mode value 2

#draw the line
scoreboard players operation #temp visualXoffset = @s visualXoffset
scoreboard players operation #temp visualYoffset = @s visualYoffset
scoreboard players operation #temp visualZoffset = @s visualZoffset
scoreboard players operation #temp visualYaw = @s visualYaw
scoreboard players operation #temp visualPitch = @s visualPitch
scoreboard players operation #temp visualLength = @s visualLength

#draw ender eyes at midway point?
scoreboard players operation #halfLength value = #temp visualLength
scoreboard players operation #halfLength value /= #2 value
scoreboard players operation #odd value = #temp visualLength
scoreboard players operation #odd value %= #2 value
scoreboard players operation #drawEyes value = @s editArg3
scoreboard players operation #checkpointNum value = @s editArg1
execute if score #odd value matches 1 run scoreboard players add #halfLength value 1

execute if score @s visualXoffset matches 1.. rotated 0 0 run function phan:game/4/checkpoint_visual/x/p2048
execute if score @s visualXoffset matches 0 rotated 0 0 run function phan:game/4/checkpoint_visual/y/_pos_or_neg
execute if score @s visualXoffset matches ..-1 rotated 0 0 run function phan:game/4/checkpoint_visual/x/n2048