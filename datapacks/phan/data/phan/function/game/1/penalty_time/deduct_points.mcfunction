#remove more points the higher our score is
scoreboard players set #pointsToRemove value 10
execute if score @s scoreCurrent matches 40.. run scoreboard players set #pointsToRemove value 20
execute if score @s scoreCurrent matches 80.. run scoreboard players set #pointsToRemove value 40
execute if score @s scoreCurrent matches 200.. run scoreboard players set #pointsToRemove value 80
execute if score @s scoreCurrent matches 800.. run scoreboard players set #pointsToRemove value 160
execute if score @s scoreCurrent matches 1600.. run scoreboard players set #pointsToRemove value 320
execute if score @s scoreCurrent matches 3200.. run scoreboard players set #pointsToRemove value 640
execute if score @s scoreCurrent matches 6400.. run scoreboard players set #pointsToRemove value 1280
execute if score @s scoreCurrent matches 12800.. run scoreboard players set #pointsToRemove value 2560
execute if score @s scoreCurrent matches 25600.. run scoreboard players set #pointsToRemove value 5120
execute if score @s scoreCurrent matches 51200.. run scoreboard players set #pointsToRemove value 10240
execute if score @s scoreCurrent matches 102400.. run scoreboard players set #pointsToRemove value 20480
execute if score @s scoreCurrent matches 204800.. run scoreboard players set #pointsToRemove value 40960
execute if score @s scoreCurrent matches 409600.. run scoreboard players set #pointsToRemove value 81920
#force to 0 points if we take longer than 80 seconds
execute if score @s pPenaltyTime matches 1600.. run scoreboard players operation #pointsToRemove value = @s scoreCurrent
#don't remove more than we have
execute if score #pointsToRemove value > @s scoreCurrent run scoreboard players operation #pointsToRemove value = @s scoreCurrent

#deduct points
scoreboard players operation @s scoreCurrent -= #pointsToRemove value
scoreboard players operation @s scoreCurrent2 -= #pointsToRemove value
scoreboard players operation @s pPenaltyPoints = #pointsToRemove value

#scary point loss sound
function phan:tell_spectators
execute if score @s scoreCurrent matches 1.. as @a[tag=tellMe] at @s run playsound entity.wither.hurt master @s ~ 100000 ~ 100000 1.7

#fail when we run out of points
execute if score @s scoreCurrent matches ..0 run function phan:game/1/penalty_time/out_of_points