scoreboard players add @s lap 1
scoreboard players set @s check 0
scoreboard players set @s checkFake 0
execute if entity @s[tag=ai] run function phan:bots/race/determine_if_on_final_lap

#show fancy thing on actionbar
execute if entity @s[type=player] run function phan:game/4/race/show_lap_actionbar