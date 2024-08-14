#didn't get ranked? just take whatever is on positionAssign (which is last place)
execute unless score @s racePosCalc matches 1.. run scoreboard players operation @s racePosCalc = #positionAssign value

#save position in a less volatile variable
scoreboard players operation @s racePosDisplay = @s racePosCalc
scoreboard players operation @s[tag=finished] racePosDisplay = @s finishPos
function phan:game/4/get_item_position
execute if entity @s[tag=botRival] run scoreboard players operation #botRivalPosition value = @s racePosDisplay

#show how many eyes we've got
function phan:bots/battle/publish_position_eyes with storage phan:bot_data

#mark last place with a tag
tag @s[tag=lastPlace] remove lastPlace
scoreboard players operation #test2 value = #positionAssign value
scoreboard players remove #test2 value 1
execute if score @s[scores={racePosCalc=2..}] racePosCalc = #test2 value run tag @s add lastPlace

#clear racePosCalc if we're botController
execute if entity @s[tag=botController] run scoreboard players reset @s racePosCalc