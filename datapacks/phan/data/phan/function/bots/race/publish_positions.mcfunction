#didn't get ranked? just take whatever is on positionAssign (which is last place)
execute unless score @s racePosCalc matches 1.. run scoreboard players operation @s racePosCalc = #positionAssign value

#save position in a less volatile variable
scoreboard players operation @s racePosDisplay = @s racePosCalc
scoreboard players operation @s[tag=finished] racePosDisplay = @s finishPos
function phan:game/4/get_item_position

#show top 8 in reverse order
tag @s[scores={racePosDisplay=1..8}] add showTopPlayers
function phan:bots/race/publish_positions_top_index
tag @s[tag=showTopPlayers] remove showTopPlayers

#mark last place with a tag
tag @s[tag=lastPlace] remove lastPlace
scoreboard players operation #test2 value = #positionAssign value
scoreboard players remove #test2 value 1
execute if score @s[scores={racePosCalc=2..}] racePosCalc = #test2 value run tag @s add lastPlace

#clear rpcalc if we're botcontroller
execute if entity @s[tag=botController] run scoreboard players reset @s racePosCalc