#gradual point adding (because it looks cool for the bonus)
execute if score @s addPointsLater matches 1.. run function phan:game/1/add_points_later

#keep track of max points we've held in scoreCurrent
execute if score @s scoreCurrent > @s scoreCurrent2 run scoreboard players operation @s scoreCurrent2 = @s scoreCurrent

#did our score change? make the HUD do a fun little feedback bump
execute if score @s scoreChanged matches 1.. run scoreboard players remove @s scoreChanged 1
execute if score @s scoreCurrent > @s prevTickScore run scoreboard players set @s scoreChanged 2
execute if score @s scoreChanged matches ..-1 run scoreboard players add @s scoreChanged 1
execute if score @s scoreCurrent < @s prevTickScore run scoreboard players set @s[scores={pSubGameState=1}] scoreChanged -2
scoreboard players operation @s prevTickScore = @s scoreCurrent

#split our score into many digits so the HUD can use it
scoreboard players operation @s scoreDigit1 = @s scoreCurrent
scoreboard players operation @s scoreDigit1 %= #10 value

scoreboard players operation @s scoreDigit2 = @s scoreCurrent
scoreboard players operation @s scoreDigit2 %= #100 value
scoreboard players operation @s scoreDigit2 /= #10 value

scoreboard players operation @s scoreDigit3 = @s scoreCurrent
scoreboard players operation @s scoreDigit3 %= #1000 value
scoreboard players operation @s scoreDigit3 /= #100 value

scoreboard players operation @s scoreDigit4 = @s scoreCurrent
scoreboard players operation @s scoreDigit4 %= #10000 value
scoreboard players operation @s scoreDigit4 /= #1000 value

scoreboard players operation @s scoreDigit5 = @s scoreCurrent
scoreboard players operation @s scoreDigit5 %= #100000 value
scoreboard players operation @s scoreDigit5 /= #10000 value

scoreboard players operation @s scoreDigit6 = @s scoreCurrent
scoreboard players operation @s scoreDigit6 %= #1000000 value
scoreboard players operation @s scoreDigit6 /= #100000 value

scoreboard players operation @s scoreDigit7 = @s scoreCurrent
scoreboard players operation @s scoreDigit7 %= #10000000 value
scoreboard players operation @s scoreDigit7 /= #1000000 value

#if we're doing the score change feedback: bump digits
execute if score @s scoreChanged matches 1.. run function phan:game/1/set_score_digits_bump
execute if score @s scoreChanged matches ..-1 run function phan:game/1/set_score_digits_bump_negative

#higher digits are forced to be negative until they've been reached
#(-1 means show NOTHING instead of a 0)
execute if score @s scoreCurrent matches ..9 run scoreboard players set @s scoreDigit2 -1
execute if score @s scoreCurrent matches ..99 run scoreboard players set @s scoreDigit3 -1
execute if score @s scoreCurrent matches ..999 run scoreboard players set @s scoreDigit4 -1
execute if score @s scoreCurrent matches ..9999 run scoreboard players set @s scoreDigit5 -1
execute if score @s scoreCurrent matches ..99999 run scoreboard players set @s scoreDigit6 -1
execute if score @s scoreCurrent matches ..999999 run scoreboard players set @s scoreDigit7 -1