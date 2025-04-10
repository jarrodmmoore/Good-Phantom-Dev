#MAIN

#=====
#TICK TIMERS

scoreboard players add #10Hz value 1
execute if score #10Hz value matches 2.. run scoreboard players set #10Hz value 0
scoreboard players add #5Hz value 1
execute if score #5Hz value matches 4.. run scoreboard players set #5Hz value 0
scoreboard players add #2sec value 1
execute if score #2sec value matches 40.. run scoreboard players set #2sec value 0

#=====
#GENERAL GAME FUNCTION

#warn players if the server is unfit to run good phantom
function phan:common/server_host_function_error_check

#determine if admins are needed to do stuff
scoreboard players set #requireAdmin value 0
execute if score #adminMode value matches 1.. if entity @a[tag=admin,scores={idleTime=..3600}] run scoreboard players set #requireAdmin value 1

#clear scoreboard cache when requested
execute if score #clearCacheProgress value matches 1.. run function phan:editor/clear_scoreboard_cache

#get ready to count players in editor mode
scoreboard players set #playersInEditMode value 0

#integrate players once they join the world
function phan:join/_tick
#players also run a lot of miscellaneous logic on themselves here

#game state index for major game logic
function phan:game/_state_index

#do stuff with the HUD
function phan:custom_hud/_ch_tick

#item code is globally active
function phan:items/_tick

#=====
#DEBUG

#no combo
#scoreboard players set @a[tag=nocombo] combo 0

#show a scoreboard value, always
#title @a actionbar ["",{text:"#tvAnimation = "},{score:{name:"#tvAnimation",objective:"value"}}]

#draw boundaries for out of bounds
#execute as @a[tag=draw] at @s run fill ~-3 -64 ~-3 ~3 -63 ~3 red_wool

#very dangerous function. don't run it unless you 100% know what it does and where to use it
#execute as @a[tag=simplify_clouds] at @s run function phan:utility/simplify_clouds

#show variables for a player
#execute as @a[tag=debugScores,limit=1] run function phan:utility/debug_scores

#1.21.4 -- fix item models
#execute if score #5Hz value matches 1 as @a[limit=1] at @s as @e[type=item_display,tag=node,tag=arrowSign,tag=!newModelFormat] run function phan:utility/repair_old_arrow_sign_models

#=====
#CLEAN-UP

#no experience orbs, please
kill @e[type=experience_orb,tag=!stay]

#lifespan score, applied to entities that are meant to be temporary
#(this is a good way to /kill entities without having to worry about them generating garbage scoreboard data due to command stack tomfoolery)
execute as @e[scores={lifespan=-2147483648..2147483647}] run function phan:common/lifespan_tick

#clear tags and stuff
execute as @a run function phan:control/player_input_cleanup