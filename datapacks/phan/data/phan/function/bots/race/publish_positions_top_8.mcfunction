$scoreboard players set $(username) racePosDisplay2 1
$execute if entity @s[tag=!finished] run scoreboard players display numberformat $(username) racePosDisplay2 fixed ["",{text:"➇",color:"white",bold:false}]
