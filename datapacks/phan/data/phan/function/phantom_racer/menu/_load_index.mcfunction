#we did the thing
scoreboard players set #tvLoadImpulse value 0

#load the page we want
execute if score #tvMenuPage value matches 0 run function phan:phantom_racer/menu/title/load
execute if score #tvMenuPage value matches 1 run function phan:phantom_racer/menu/mode_select/load
execute if score #tvMenuPage value matches 2 run function phan:phantom_racer/menu/class_select/load
execute if score #tvMenuPage value matches 3 run function phan:phantom_racer/menu/cup_select/load
#...