#didn't get ranked? just take whatever is on positionAssign (which is last place)
execute as @a[tag=playing] unless score @s racePosCalc matches 1.. run scoreboard players operation @s racePosCalc = #positionAssign value

#save position in a less volatile variable
execute as @a[tag=playing] run scoreboard players operation @s racePosDisplay = @s racePosCalc
execute as @a[tag=playerReservation] run scoreboard players operation @s racePosDisplay = @s finishPos
execute as @a[tag=playing] run function phan:game/4/get_item_position

#show top players based on ever eyes
scoreboard players set @a[tag=!playing,tag=!playerReservation] enderEyes 0
scoreboard players reset @a[scores={enderEyesShow=1..,enderEyes=..0}] enderEyesShow
execute as @a[tag=!playerReservation,scores={enderEyes=1..}] run scoreboard players operation @s enderEyesShow = @s enderEyes
execute as @a[tag=!playerReservation,scores={enderEyes=1..}] run scoreboard players display numberformat @s enderEyesShow styled {"color":"light_purple"}

#finished players should have a flag by their name...

#show sidebar, but ONLY if there's at least one qualifying player
execute if score #2sec value matches 1 if entity @a[scores={enderEyesShow=1..}] if score #subGameState value matches 0 run scoreboard objectives setdisplay sidebar enderEyesShow
execute if score #2sec value matches 1 unless entity @a[scores={enderEyesShow=1..}] if score #subGameState value matches 0 run scoreboard objectives setdisplay sidebar