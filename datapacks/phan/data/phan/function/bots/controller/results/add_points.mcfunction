#sound if we have any points
execute if score @s vsAddPoints matches 1.. run scoreboard players add #test2 value 1

#transfer vsAddPoints to versusPoints
scoreboard players add @s[scores={vsAddPoints=9..}] versusPoints 9
scoreboard players remove @s[scores={vsAddPoints=9..}] vsAddPoints 9

scoreboard players add @s[scores={vsAddPoints=1..}] versusPoints 1
scoreboard players remove @s[scores={vsAddPoints=1..}] vsAddPoints 1

#update sidebar
function phan:bots/controller/results/update_points

#do we have more points to add?
execute if entity @s[scores={vsAddPoints=1..}] run scoreboard players set #test value 2
execute if entity @s[scores={vsAddPoints=100..}] run scoreboard players set #test value 3