#didn't get ranked? just take whatever is on positionAssign (which is last place)
execute as @a[tag=playing] unless score @s racePosCalc matches 1.. run scoreboard players operation @s racePosCalc = #positionAssign value

#save position in a less volatile variable
execute as @a[tag=playing] run scoreboard players operation @s racePosDisplay = @s racePosCalc
execute as @a[tag=playerReservation] run scoreboard players operation @s racePosDisplay = @s finishPos
execute as @a[tag=playing] run function phan:game/4/get_item_position

#show top 8 in reverse order
tag @a[tag=playing,scores={racePosDisplay=1..8}] add showTopPlayers
tag @a[tag=playerReservation,scores={racePosDisplay=1..8}] add showTopPlayers
scoreboard players reset @a[tag=!showTopPlayers] racePosDisplay2
execute as @a[tag=showTopPlayers] run function phan:game/4/race/checkpoint/publish_positions_top
tag @a[tag=showTopPlayers] remove showTopPlayers

#mark last place with a tag
tag @a[tag=lastPlace] remove lastPlace
scoreboard players operation #test2 value = #positionAssign value
scoreboard players remove #test2 value 1
execute as @a[tag=playing,scores={racePosCalc=2..}] if score @s racePosCalc = #test2 value run tag @s add lastPlace

#show sidebar if it's not already showing
execute if score #showingRacePositions value matches 0 if score #gameState value matches 4 run scoreboard objectives setdisplay sidebar racePosDisplay2
execute if score #showingRacePositions value matches 0 run scoreboard players set #showingRacePositions value 1