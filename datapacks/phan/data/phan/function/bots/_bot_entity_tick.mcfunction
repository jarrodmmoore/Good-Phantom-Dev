#executed by the zombie that acts as one of our bots
#this function should be called by a botController after it updated the storage "phan:bot_data" with the data corresponding to this bot

#...

#stay alive as long as we're running this function
scoreboard players set @s lifespan 10

#let the botController know that we exist and ran this function
scoreboard players set #botSuccess value 1