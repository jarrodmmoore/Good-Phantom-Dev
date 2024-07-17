#executed by the zombie that acts as one of our bots
#this function should be called by a botController after it updated the storage "phan:bot_data" with the data corresponding to this bot

#bot isn't moving unless it declared it wants to move
scoreboard players set #botWantsToMove value 0

#coordinates
function phan:bots/movement/get_coordinates

#=====
#behavior based on state
function phan:bots/behaviors/_behavior_state_index
#=====

#=====
#perform movement
function phan:bots/movement/_bot_movement_main
#=====

#stay alive as long as we're running this function
scoreboard players set @s lifespan 10

#let the botController know that we exist and ran this function
scoreboard players set #botSuccess value 1