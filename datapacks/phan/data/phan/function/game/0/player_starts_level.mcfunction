#fail if admin required and we're not admin
execute if score #requireAdmin value matches 1 unless entity @s[tag=admin] run return run function phan:game/0/admin_required
#=====

#set level based on who we entered the dream of
scoreboard players operation #chosenLevel value = @s nearPlayer

#save lastLevelPlayed in case players exit out afterwards
scoreboard players operation #lastLevelPlayed value = #chosenLevel value

#snitch on us if playing multiplayer
execute store result score #teamSelectTest value run execute if entity @a[tag=doneWithIntro]
execute if entity @s[tag=debugMultiplayer] run scoreboard players set #teamSelectTest value 2
execute if score #teamSelectTest value matches 2.. store result storage phan:level_index level_id int 1 run scoreboard players get #chosenLevel value
execute if entity @s[type=player] if score #teamSelectTest value matches 2.. run function phan:game/2/snitch_on_player_selecting_dream with storage phan:level_index

#either start the game or choose mode, depending if there are options available
function phan:game/2/_2_init