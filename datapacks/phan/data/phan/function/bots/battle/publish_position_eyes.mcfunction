#no eyes? reset score and reset score immediately
$execute if score @s enderEyes matches ..0 run return run execute if score $(username) enderEyesShow matches 1.. run scoreboard players reset $(username) enderEyesShow

#have eyes? put on sidebar
$scoreboard players operation $(username) enderEyesShow = @s enderEyes
$execute if entity @s[tag=!finished] run scoreboard players display numberformat $(username) enderEyesShow styled {color:"light_purple"}
$execute if entity @s[tag=finished] run scoreboard players display numberformat $(username) enderEyesShow fixed ["",["",{text:"\uE037",color:"white"}]]