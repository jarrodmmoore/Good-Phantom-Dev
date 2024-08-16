scoreboard players add @s checkFake 1
#did our check score fall behind our fake score? sync it up again
#this probably won't ever happen because of the order we process stuff in, but we'll do it just for resilience i guess
execute if score @s check < @s checkFake run scoreboard players operation @s check = @s checkFake

#respawn cooldown
scoreboard players set @s[type=player] inputCooldownB 30

#check or record timestamp on this checkpoint to figure out item balancing
function phan:game/4/race/checkpoint/timestamp/_index

#clear tag
tag @s[tag=incrementCheckOptional] remove incrementCheckOptional