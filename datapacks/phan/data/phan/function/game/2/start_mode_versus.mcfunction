#multiplayer: snitch on who did this
execute store result score #teamSelectTest value run execute if entity @a[tag=doneWithIntro]
execute if entity @s[tag=debugMultiplayer] run scoreboard players set #teamSelectTest value 2
#multiplayer: snitch on who did this
execute if score #freePlay value matches 0 if entity @s[type=player] if score #teamSelectTest value matches 2.. run tellraw @a[tag=doneWithIntro] ["",{"text":"(","color":"gray"},{"selector":"@s","color":"gray"},{"text":")","color":"gray"},{"text":" "},{"translate":"gp.selected_mode","color":"white","with":[{"translate":"gp.mode_select.versus","color":"light_purple"}]}]
execute if score #freePlay value matches 1 store result storage phan:level_index level_id int 1 run scoreboard players get #chosenLevel value
execute if score #freePlay value matches 1 store result storage phan:level_index act int 1 run scoreboard players get #freePlayAct value
execute if score #freePlay value matches 1 if entity @s[type=player] if score #teamSelectTest value matches 2.. run function phan:game/2/snitch_on_player_choosing_act_portal_race with storage phan:level_index

#all bot controllers that are still active need to spawn their entities to indicate they're active
scoreboard players set #beQuiet value 1
execute as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] positioned 203 -30 112 rotated 45 0 run function phan:game/2/bots/spawn_bot_in_team_select
scoreboard players set #beQuiet value 0

#remember that we want to play versus mode after team select
scoreboard players set #desiredGamemode value 3

#player that runs this function gets first dibs on a player slot
execute if entity @s[type=player] run function phan:player_queue/enqueue_player_at_start

#go straight to team select. we can assume there's 2+ players.
function phan:game/2/go_to_team_select