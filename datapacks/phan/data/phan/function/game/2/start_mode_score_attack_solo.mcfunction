#remember that we want to play score attack mode after team select
scoreboard players set #desiredGamemode value 1

#sound
execute as @a[tag=doneWithIntro] at @s run playsound minecraft:block.beacon.activate master @s ~ 100000 ~ 100000 1.8

#player that runs this function gets first dibs on a player slot
function phan:player_queue/enqueue_player_at_start

#we are the only player
tag @a[tag=playing] remove playing
tag @s add playing
function phan:game/2/start_game