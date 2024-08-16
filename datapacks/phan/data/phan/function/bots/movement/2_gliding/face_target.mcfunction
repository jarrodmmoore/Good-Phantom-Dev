$execute unless loaded $(target_x) $(target_y) $(target_z) if score #vGameType value matches 1 run tag @s add botRespawnAdvance

$execute at @s facing $(target_x).$(target_x_dec) $(target_y).$(target_y_dec) $(target_z).$(target_z_dec) run tp @s ~ ~ ~ ~ ~