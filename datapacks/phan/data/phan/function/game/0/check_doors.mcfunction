#practice area
scoreboard players set #test value 0
execute if entity @a[gamemode=!spectator,x=188,y=-7,z=116,dx=6,dy=3,dz=4] run scoreboard players set #test value 1
execute if score #test value matches 1 run fill 190 -8 116 190 -8 116 redstone_block replace melon
execute if score #test value matches 0 run fill 190 -8 116 190 -8 116 melon replace redstone_block

#pastel palace
scoreboard players set #test value 0
execute if entity @a[gamemode=!spectator,x=203,y=-1,z=127,dx=3,dy=3,dz=6] run scoreboard players set #test value 1
execute if score #test value matches 1 run fill 202 -2 131 207 -2 131 redstone_block replace melon
execute if score #test value matches 0 run fill 202 -2 131 207 -2 131 melon replace redstone_block

#moonlit mountains
scoreboard players set #test value 0
execute if score #dream1Completed value matches 1 if entity @a[gamemode=!spectator,x=203,y=-1,z=103,dx=3,dy=3,dz=6] run scoreboard players set #test value 1
execute if score #test value matches 1 if score #dream2Opened value matches 0 as @e[type=item_display,tag=dream2lock] at @s run function phan:game/0/open_lock
execute if score #test value matches 1 run fill 202 -2 105 207 -2 105 redstone_block replace melon
execute if score #test value matches 0 run fill 202 -2 105 207 -2 105 melon replace redstone_block

#neon nightway
scoreboard players set #test value 0
execute if score #dream2Completed value matches 1 if entity @a[gamemode=!spectator,x=200,y=-7,z=127,dx=3,dy=3,dz=6] run scoreboard players set #test value 1
execute if score #test value matches 1 if score #dream4Opened value matches 0 as @e[type=item_display,tag=dream4lock] at @s run function phan:game/0/open_lock
execute if score #test value matches 1 run fill 199 -8 131 204 -8 131 redstone_block replace melon
execute if score #test value matches 0 run fill 199 -8 131 204 -8 131 melon replace redstone_block

#deep dive
scoreboard players set #test value 0
execute if score #dream2Completed value matches 1 if entity @a[gamemode=!spectator,x=200,y=-7,z=103,dx=3,dy=3,dz=6] run scoreboard players set #test value 1
execute if score #test value matches 1 if score #dream5Opened value matches 0 as @e[type=item_display,tag=dream5lock] at @s run function phan:game/0/open_lock
execute if score #test value matches 1 run fill 199 -8 105 204 -8 105 redstone_block replace melon
execute if score #test value matches 0 run fill 199 -8 105 204 -8 105 melon replace redstone_block

#shattered city
scoreboard players set #test1 value 0
execute if score #dream4Completed value matches 1 if entity @a[gamemode=!spectator,x=211,y=-1,z=117,dx=6,dy=5,dz=2] run scoreboard players set #test1 value 1
execute if score #test1 value matches 1 if score #dream3OpenedA value matches 0 as @e[type=item_display,tag=dream3lockA] at @s run function phan:game/0/open_lock
scoreboard players set #test2 value 0
execute if score #dream5Completed value matches 1 if entity @a[gamemode=!spectator,x=211,y=-1,z=117,dx=6,dy=5,dz=2] run scoreboard players set #test2 value 1
execute if score #test2 value matches 1 if score #dream3OpenedB value matches 0 as @e[type=item_display,tag=dream3lockB] at @s run function phan:game/0/open_lock
scoreboard players set #test value 0
execute if score #test1 value matches 1 if score #test2 value matches 1 run scoreboard players set #test value 1
execute if score #test value matches 1 run fill 215 -3 118 215 -3 118 redstone_torch replace melon
execute if score #test value matches 0 run fill 215 -3 118 215 -3 118 melon replace redstone_torch


#while we're here: let's give players their keys
execute if score #dream1Completed value matches 1 as @a[gamemode=adventure,scores={location_z=-500..}] run function phan:game/0/give_key/purple
execute if score #dream2Completed value matches 1 as @a[gamemode=adventure,scores={location_z=-500..}] run function phan:game/0/give_key/green
execute if score #dream4Completed value matches 1 as @a[gamemode=adventure,scores={location_z=-500..}] run function phan:game/0/give_key/yellow
execute if score #dream5Completed value matches 1 as @a[gamemode=adventure,scores={location_z=-500..}] run function phan:game/0/give_key/cyan