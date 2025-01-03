#remember that we want to play time attack after team select
scoreboard players set #desiredGamemode value 2

#sound
#execute as @a[tag=doneWithIntro] at @s run playsound minecraft:block.beacon.activate master @s ~ 100000 ~ 100000 1.8

#player that runs this function gets sent to the back of the queue
#function phan:player_queue/enqueue_player

#the player that touched the pickup gets to play. no questions asked.
#tag @a[tag=playing] remove playing
#tag @s add playing
#function phan:game/2/start_game

#player that runs this function gets first dibs on a player slot
function phan:player_queue/enqueue_player_at_start

#check player count. if there's more than 2, send to team select.
execute store result score #teamSelectTest value run execute if entity @a[tag=doneWithIntro]
execute if score #teamSelectTest value matches ..1 run tag @a[tag=playing] remove playing
execute if score #teamSelectTest value matches ..1 run tag @s add playing
execute if score #teamSelectTest value matches ..1 as @a[tag=doneWithIntro] at @s run playsound minecraft:block.beacon.activate master @s ~ 100000 ~ 100000 1.8
execute if score #teamSelectTest value matches ..1 run function phan:game/2/start_game
execute if score #teamSelectTest value matches 2.. run function phan:game/2/go_to_team_select