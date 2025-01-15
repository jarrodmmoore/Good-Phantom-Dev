#we did the thing
scoreboard players set #tvLoadImpulse value 0

#load the page we want
execute if score #tvMenuPage value matches 0 run function phan:phantom_racer/menu/title/load
execute if score #tvMenuPage value matches 1 run function phan:phantom_racer/menu/mode_select/load
execute if score #tvMenuPage value matches 2 run function phan:phantom_racer/menu/class_select/load
execute if score #tvMenuPage value matches 3 run function phan:phantom_racer/menu/cup_select/load
execute if score #tvMenuPage value matches 4 run function phan:phantom_racer/menu/track_select/load
execute if score #tvMenuPage value matches 5 run function phan:phantom_racer/menu/track_select_act/load
execute if score #tvMenuPage value matches 6 run function phan:phantom_racer/menu/cup_select_random/load
execute if score #tvMenuPage value matches 7 run function phan:phantom_racer/menu/cup_select_custom/load
#...

#make the console power blink as a fun detail
setblock 245 -11 117 air