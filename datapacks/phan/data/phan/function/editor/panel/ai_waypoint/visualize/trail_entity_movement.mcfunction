#delete when we reach target
scoreboard players operation #checkID value = @s AIBC_selected
scoreboard players set #test value 0
execute as @e[type=marker,tag=AIBC,distance=..1] if score @s AIBC_id = #checkID value run scoreboard players set #test value 1
execute if score #test value matches 1 run return run scoreboard players set @s lifespan 0

#particle depending on tag
execute if entity @s[tag=light_green] run particle dust{color:[0.5,1.0,0.5],scale:1.5} ~ ~.2 ~ 0 0 0 0 1 force
execute if entity @s[tag=yellow] run particle dust_color_transition{from_color:[1.0,1.0,0.0],to_color:[0.0,0.0,0.0],scale:2} ~ ~.2 ~ 0 0 0 0 1 force
execute if entity @s[tag=light_blue] run particle dust{color:[0.0,1.0,1.0],scale:1.5} ~ ~.2 ~ 0 0 0 0 1 force
execute if entity @s[tag=dark_green] run particle dust{color:[0.0,8.0,0.0],scale:1.5} ~ ~.2 ~ 0 0 0 0 1 force
execute if entity @s[tag=dark_blue] run particle dust{color:[0.0,0.0,1.0],scale:1.5} ~ ~.2 ~ 0 0 0 0 1 force
execute if entity @s[tag=pearl] run particle enchanted_hit ~ ~.2 ~ 0 0 0 0 1 force

#move toward target waypoint
tp @s ^ ^ ^1