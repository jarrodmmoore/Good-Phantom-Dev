#count down in ticks
scoreboard players remove @s pTimeRemaining 1

#unlimited time if assist mode says so
execute if score #assist_time_limit value matches 2.. run scoreboard players set @s[scores={pTimeRemaining=800000000..}] pTimeRemaining 900000000

#send back to practice area when time's up
execute if score @s pTimeRemaining matches ..0 run function phan:game/0/player/warp_to_practice_area