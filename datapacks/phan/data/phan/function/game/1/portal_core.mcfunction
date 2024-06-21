#take pearls from nearby player?
scoreboard players operation #takePearls value = #pearlsNeeded value
scoreboard players operation #takePearls value -= @s enderEyes
execute if score #takePearls value matches 1.. if entity @a[tag=playing,gamemode=adventure,distance=..8,scores={enderEyes=1..}] run function phan:game/1/portal_core_take_eyes

#cooldown for pearl fill-in
execute if score @s editArg1 matches 1.. run scoreboard players remove @s editArg1 1

#got pearls? put 'em in the frame!
execute if score @s enderEyes matches 1.. if score @s editArg1 matches ..0 run function phan:game/1/portal_core_fill_frame

#done?
execute if score @s editArg2 matches 0 if score #pearlsNeeded value matches ..0 run function phan:game/1/portal_core_finished

#if we're completed, show fancy particles
execute if score @s editArg2 matches 1 at @s run particle instant_effect ~ ~10 ~ 1.2 5 1.2 1 2 force @a[distance=..90]