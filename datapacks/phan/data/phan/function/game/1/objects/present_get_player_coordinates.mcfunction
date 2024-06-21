#this function has the wrong name
#because i don't want to go in and delete a file on remote server ;)

#summon an armor stand that will be the vehicle for our present
summon armor_stand ~ ~ ~ {Tags:["presentCarrier","setme"],Marker:1b,NoGravity:1b,Invisible:1b,NoBasePlate:1b}
scoreboard players operation @e[tag=setme,type=armor_stand] playerID = @s playerID
scoreboard players set @e[tag=setme,type=armor_stand] lifespan 10
ride @s mount @e[tag=setme,limit=1,type=armor_stand]
tag @e[tag=setme] remove setme