#this function has the wrong name
#because i don't want to go in and delete a file on remote server ;)

#summon an armor stand that will be the vehicle for our present
summon armor_stand ~ ~ ~ {Tags:["presentCarrier","setme"],Marker:1b,NoGravity:1b,Invisible:1b,NoBasePlate:1b}
scoreboard players operation @e[type=armor_stand,tag=setme] playerID = @s playerID
scoreboard players set @e[type=armor_stand,tag=setme] lifespan 10
ride @s mount @e[type=armor_stand,tag=setme,limit=1]
tag @e[type=armor_stand,tag=setme] remove setme