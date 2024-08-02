#require ground? nope. we're not improv flight-friendly
execute if entity @s[tag=AIBC_requireGround] run return 0

#we are able to restrict directions
scoreboard players add #wpRestrictDirections value 1
#this direction is fine
$scoreboard players set #wpAllowDir$(dir) value 1