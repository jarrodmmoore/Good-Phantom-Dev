$scoreboard players set $(username) racePosDisplay2 3
$execute if entity @s[tag=!finished] run scoreboard players display numberformat $(username) racePosDisplay2 fixed ["",{"text":"➅","color":"white","bold":false}]
