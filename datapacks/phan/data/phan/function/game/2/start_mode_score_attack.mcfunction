#remember that we want to play score attack mode after team select
scoreboard players set #desiredGamemode value 1

#player that runs this function gets first dibs on a player slot
function phan:player_queue/enqueue_player_at_start

#check player count. if there's more than 2, send to team select.
execute store result score #teamSelectTest value run execute if entity @a[tag=doneWithIntro]
execute if entity @s[tag=debugMultiplayer] run scoreboard players set #teamSelectTest value 2
execute if score #teamSelectTest value matches ..1 run tag @a[tag=playing] remove playing
execute if score #teamSelectTest value matches ..1 run tag @s add playing
execute if score #teamSelectTest value matches ..1 as @a[tag=doneWithIntro] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.beacon.activate",targets:"@s",pitch:"1.8",volume:"1"}
execute if score #teamSelectTest value matches ..1 run function phan:game/2/start_game
#multiplayer: snitch on who did this
execute if score #freePlay value matches 0 if entity @s[type=player] if score #teamSelectTest value matches 2.. run tellraw @a[tag=doneWithIntro] ["",{text:"(",color:"gray"},{selector:"@s",color:"gray"},{text:")",color:"gray"},{text:" "},{translate:"gp.selected_mode",color:"white",with:[{translate:"gp.mode_select.score_attack",color:"yellow"}]}]
execute if score #freePlay value matches 1 store result storage phan:level_index level_id int 1 run scoreboard players get #chosenLevel value
execute if score #freePlay value matches 1 store result storage phan:level_index act int 1 run scoreboard players get #freePlayAct value
execute if score #freePlay value matches 1 if entity @s[type=player] if score #teamSelectTest value matches 2.. run function phan:game/2/snitch_on_player_choosing_act_score_attack with storage phan:level_index
#go to team select if 2+ players
execute if score #teamSelectTest value matches 2.. run function phan:game/2/go_to_team_select