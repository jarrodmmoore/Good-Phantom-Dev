scoreboard players set #tvControlState value 0

#if we were on a page of the menu that depends on a previous page already existing, we need to back out of that
#act select returns to track select
execute if score #tvMenuPage value matches 5 run scoreboard players set #tvMenuPage value 4
#random panel and custom panel returns to cup select
execute if score #tvMenuPage value matches 6 run scoreboard players set #tvMenuPage value 3
execute if score #tvMenuPage value matches 7 run scoreboard players set #tvMenuPage value 3

#boot whatever page of the menu we're on
scoreboard players set #tvLoadImpulse value 1