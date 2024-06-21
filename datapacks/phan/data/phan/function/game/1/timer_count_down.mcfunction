#count down in ticks
scoreboard players remove @s pTimeRemaining 1

#unlimited time if assist mode says so
execute if score #assist_time_limit value matches 2.. run scoreboard players set @s[scores={pTimeRemaining=800000000..}] pTimeRemaining 900000000

#enter penalty time when timer hits 0
execute if score @s pTimeRemaining matches ..0 run function phan:game/1/penalty_time/start_penalty_time

#game ends when timer's out
#(old behavior before penalty time was added)
#execute if score @s pTimeRemaining matches ..0 run scoreboard players set @s pGameTime 1000000
#execute if score @s pTimeRemaining matches ..0 run scoreboard players set @s pSubGameState -2