#handle teleporters
execute as @a[gamemode=adventure,tag=playing,scores={pCurrentArea=3}] at @s at @s if block ~ ~-.2 ~ red_glazed_terracotta run function phan:levels/deep_dive/a3_teleport_index

#temporary platforms state
execute if score #a3_temp_platforms value matches 1.. run function phan:levels/deep_dive/a3_platforms_enabled

#enforce platform state when off
execute unless score #a3_temp_platforms value matches 1.. run function phan:levels/deep_dive/a3_platforms_disabled

#listen for targets and synchronize their state
execute if entity @e[tag=bigTarget,tag=act3Spawn,type=item_display,scores={editArg1=19..}] run function phan:levels/deep_dive/a3_target_hit