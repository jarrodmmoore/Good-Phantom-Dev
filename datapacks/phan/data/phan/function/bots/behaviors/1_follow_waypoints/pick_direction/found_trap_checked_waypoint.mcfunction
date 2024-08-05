#are there mines or trapped chests nearby? restrict this direction if so
execute at @s if entity @e[type=item_display,tag=enemyMine,distance=..3] run return 0

#we are able to restrict directions
scoreboard players add #wpRestrictDirections value 1
#this direction is fine
$scoreboard players set #wpAllowDir$(dir) value 1