#item pickup
#stardust
scoreboard players remove @s[scores={stardustDelay=1..}] stardustDelay 1
execute store result score #test value run clear @s yellow_wool 0
execute if score #test value matches 1.. if score @s stardustDelay matches ..0 run function phan:game/1/player/score_stardust
#timer
execute store result score #test value run clear @s red_wool[custom_data~{redTimer:1b}] 0
execute if score #test value matches 1.. run function phan:game/1/player/get_timer
execute store result score #test value run clear @s red_wool[custom_data~{goldTimer:1b}] 0
execute if score #test value matches 1.. run function phan:game/1/player/get_timer_golden

#get rid of tag
tag @s[tag=vsMidGameJoin] remove vsMidGameJoin

#don't bully other players!
effect give @s weakness 5 15 true

#do different things if we're in the cabin or not
scoreboard players set #playerInLobby value 0
execute if entity @s[x=180,y=-13,z=87,dx=75,dy=100,dz=75] run scoreboard players set #playerInLobby value 1
execute if entity @s[scores={location_x=500..1500,location_z=-1500..-500}] run scoreboard players set #playerInLobby value 2
execute if score #playerInLobby value matches 1 run function phan:game/0/player/_in_lobby_tick
execute unless score #playerInLobby value matches 1 run function phan:game/0/player/_practice_area_tick