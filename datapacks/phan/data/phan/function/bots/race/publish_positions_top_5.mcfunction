$scoreboard players set $(username) racePosDisplay2 4
$execute if entity @s[tag=!finished] run scoreboard players display numberformat $(username) racePosDisplay2 fixed ["",{"text":"➄","color":"white","bold":false}]
