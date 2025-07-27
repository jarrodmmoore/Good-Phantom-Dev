#very important function

#call it to gradually improve TPS as the game runs
#for best results, call on every game tick

execute as @e[limit=1,sort=random] at @s run summon slime ~ ~ ~ {Tags:["optimizer"],Size:4}
execute as @e unless entity @s[type=slime,tag=optimizer] if entity @e[type=slime,tag=optimizer,distance=..4] run kill @s

#this is a little known trick that not enough people know about