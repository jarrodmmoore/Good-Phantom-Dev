#we in the pizza hut
scoreboard players set #inLobby value 1

#manage the assist mode chest
execute if entity @a[x=194,y=-7,z=111,distance=..11] positioned 194 -7 111 run function phan:game/0/assist_mode/chest_manage
execute as @a[x=194,y=-7,z=111,distance=..11] run function phan:game/0/assist_mode/player_check

#manage the music disc chest
execute if entity @a[x=199,y=-8,z=131,dx=11,dy=4,dz=9] positioned 200 -7 136 run function phan:game/0/stereo/chest_manage
execute as @a[x=199,y=-8,z=131,dx=11,dy=4,dz=9] run function phan:game/0/stereo/player_check


#admin panel
execute if score #5Hz value matches 2 positioned 209 -7 118 as @a[gamemode=!spectator,distance=..7] run function phan:game/0/admin_panel/player_check

#announce when admins go afk or return to the game
function phan:game/0/admin_afk_logic

#check if phantom players are near a sleeping player
scoreboard players set @a nearPlayer 0
execute as @e[type=armor_stand,tag=levelEntry] at @s if entity @a[distance=..4,gamemode=adventure] run function phan:game/0/level_entry_highlight

#zzz... players are asleep
execute as @e[type=armor_stand,tag=levelEntry] at @s positioned ~ ~.2 ~ run function phan:game/0/z_generator
execute as @e[tag=floatUp] at @s run tp @s ~ ~.04 ~

#players run some code on themselves
scoreboard players set #practiceLogic value 0
execute as @a[tag=doneWithIntro] at @s run function phan:game/0/player/_player_main

#if there's a player in the practice area, run practice area logic
function phan:game/0/practice/_practice_main

#open doors automatically when players are near
execute if score #5Hz value matches 0 run function phan:game/0/check_doors

#props missing? spawn them!
execute if score #gameState value matches 0 if block 198 0 118 air unless entity @e[limit=1,tag=lobbyProp] run function phan:game/0/summon_props