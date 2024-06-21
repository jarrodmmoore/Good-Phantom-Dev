#sounds
execute if score @s pGameTime matches 100 at @s run playsound minecraft:block.note_block.pling master @s ~ 100000 ~ 100000 1.5
execute if score @s pGameTime matches 120 at @s run playsound minecraft:block.note_block.pling master @s ~ 100000 ~ 100000 1.7

#act subtitle
execute if score @s pGameTime matches ..119 run title @s subtitle [""]
execute if score @s pGameTime matches 120 run title @s subtitle ["",{"translate":"gp.game.act_number","with":[{"score":{"name":"@s","objective":"pCurrentArea"}}]}]

#level title
execute unless score #chosenLevel value matches 1..5 run title @s title ["",{"text":"\uE399","color":"white"}]
execute if score #chosenLevel value matches 1 run title @s title ["",{"text":"\uE301","color":"white"}]
execute if score #chosenLevel value matches 2 run title @s title ["",{"text":"\uE302","color":"white"}]
execute if score #chosenLevel value matches 3 run title @s title ["",{"text":"\uE303","color":"white"}]
execute if score #chosenLevel value matches 4 run title @s title ["",{"text":"\uE304","color":"white"}]
execute if score #chosenLevel value matches 5 run title @s title ["",{"text":"\uE305","color":"white"}]
#...

#"discover" the associated dream (so the name no longer shows up as ???)
execute if score #chosenLevel value matches 1 run scoreboard players set #dream1Discovered value 1
execute if score #chosenLevel value matches 2 run scoreboard players set #dream2Discovered value 1
execute if score #chosenLevel value matches 3 run scoreboard players set #dream3Discovered value 1
execute if score #chosenLevel value matches 4 run scoreboard players set #dream4Discovered value 1
execute if score #chosenLevel value matches 5 run scoreboard players set #dream5Discovered value 1