#MAIN


#make a racket if the server host can't handle running functions properly
execute if entity @a[limit=1] run scoreboard players add #errorCheck value 1
execute if score #errorCheck value matches 100 run tellraw @a ["",{"text":"[ ! ] Functions are not running properly!\nGood Phantom can NOT be played in this state.\nPlease report this to your server host.","color":"red"}]
#(errorCheck gets set to 0 every time "phan:game/_state_index" executes properly)


#=====
#GENERAL GAME FUNCTION

#determine if admins are needed to do stuff
scoreboard players set #requireAdmin value 0
execute if score #adminMode value matches 1.. if entity @a[tag=admin,scores={idleTime=..3600}] run scoreboard players set #requireAdmin value 1

#get ready to count players in editor mode
scoreboard players set #playersInEditMode value 0

#integrate players once they join the world
function phan:join/_tick
#players also run a lot of miscellaneous logic on themselves here

#different tick timers
scoreboard players add #10Hz value 1
execute if score #10Hz value matches 2.. run scoreboard players set #10Hz value 0
scoreboard players add #5Hz value 1
execute if score #5Hz value matches 4.. run scoreboard players set #5Hz value 0
scoreboard players add #2sec value 1
execute if score #2sec value matches 40.. run scoreboard players set #2sec value 0

#game state index for major game logic
function phan:game/_state_index

#do stuff with the HUD
function phan:custom_hud/_ch_tick

#item code is globally active
function phan:items/_tick

#=====
#DEBUG

#show a scoreboard value, always
#title @a actionbar ["",{"text":"gameState = "},{"score":{"name":"#gameState","objective":"value"}}]

#draw boundaries for out of bounds
#execute as @a[tag=draw] at @s run fill ~-3 -64 ~-3 ~3 -64 ~3 red_wool replace air

#very dangerous function. don't run it unless you 100% know what it does and where to use it
#execute as @a[tag=simplify_clouds] at @s run function phan:utility/simplify_clouds

#show variables for a player
#execute as @a[tag=debugScores,limit=1] run function phan:debug_scores

#=====
#CLEAN-UP

#no experience orbs, please
kill @e[type=experience_orb,tag=!stay]

#lifespan score, applied to entities that are meant to be temporary
#(this is a good way to /kill entities without having to worry about them generating garbage scoreboard data due to command stack tomfoolery)
execute as @e[scores={lifespan=-2147483648..2147483647}] run function phan:lifespan_tick

#clear tags and stuff
execute as @a run function phan:control/player_input_cleanup