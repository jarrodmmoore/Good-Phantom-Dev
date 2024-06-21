execute if score @s inputCooldownB matches 1.. run function phan:game/4/race/respawn_fail
execute if score @s inputCooldownB matches ..0 run function phan:game/4/race/respawn

#handle input stuff
scoreboard players reset @s respawn

scoreboard players reset @s carrotInput