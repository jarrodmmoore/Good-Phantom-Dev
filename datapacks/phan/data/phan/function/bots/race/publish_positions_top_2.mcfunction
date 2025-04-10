$scoreboard players set $(username) racePosDisplay2 7
$execute if entity @s[tag=!finished] run scoreboard players display numberformat $(username) racePosDisplay2 fixed ["",{text:"➁",color:"white",bold:false}]
