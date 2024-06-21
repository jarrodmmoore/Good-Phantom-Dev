execute if entity @s[tag=whiteBound] run particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[tag=resetZoneBound] run particle dust{color:[1,0,0],scale:2} ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[tag=loadZoneBound] run particle dust{color:[0,1,0],scale:2} ~ ~ ~ 0 0 0 0 1 force
tp @s ^ ^ ^1