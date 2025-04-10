$scoreboard players set $(username) racePosDisplay2 5
$execute if entity @s[tag=!finished] run scoreboard players display numberformat $(username) racePosDisplay2 fixed ["",{text:"➃",color:"white",bold:false}]
