execute if block ~ ~ ~ #phan:not_solid run return run particle falling_dust{block_state:"minecraft:snow_block"} ~ ~ ~

#something was in the way? use recursion to hopefully find an open block above us
scoreboard players add #recursions value 1
execute if score #recursions value matches 6.. run return 0
execute positioned ~ ~1 ~ run function phan:editor/panel/ai_waypoint/visualize/waypoint_go_spread_particle