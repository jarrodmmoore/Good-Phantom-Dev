#executed by the zombie that acts as one of our bots
#this function should be called by a botController after it updated the storage "phan:bot_data" with the data corresponding to this bot

#bot isn't moving unless it declared it wants to move
scoreboard players set #botWantsToMove value 0

#make sure bot has elytra
execute unless items entity @s armor.chest elytra run item replace entity @s armor.chest with elytra[unbreakable={}]

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

#publish sidebar stuff
execute if score #vGameType value matches 1 run function phan:bots/race/publish_positions

#send data to controller if we need to
execute if entity @s[tag=hasDataToSend] run function phan:bots/stage_data_for_transfer

#stay alive as long as we're running this function
scoreboard players set @s lifespan 10

#let the botController know that we exist and ran this function
scoreboard players set #botSuccess value 1

#respawn?
execute if entity @s[tag=botRespawn] at @s run function phan:bots/race/respawn