scoreboard players set #test value 0
execute if entity @a[tag=playerReservation,scores={vsAddPoints=1..}] run scoreboard players set #test value 1
execute if score #botCount value matches 1.. if entity @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={vsAddPoints=1..}] run scoreboard players set #test value 1

#play a sound?
execute store result score #test2 value run execute if entity @a[tag=playerReservation,scores={vsAddPoints=1..}]

#add points!
scoreboard players add @a[tag=playerReservation,scores={vsAddPoints=9..}] versusPoints 9
scoreboard players add @a[tag=playerReservation,scores={vsAddPoints=9..}] vsPointDisplay 9
scoreboard players remove @a[tag=playerReservation,scores={vsAddPoints=9..}] vsAddPoints 9

scoreboard players add @a[tag=playerReservation,scores={vsAddPoints=1..}] versusPoints 1
scoreboard players add @a[tag=playerReservation,scores={vsAddPoints=1..}] vsPointDisplay 1
scoreboard players remove @a[tag=playerReservation,scores={vsAddPoints=1..}] vsAddPoints 1

execute if score #botCount value matches 1.. as @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1] run function phan:bots/controller/results/add_points

#sound
execute if score #test2 value matches 1.. as @a[tag=doneWithIntro] at @s run playsound minecraft:block.dispenser.fail master @s ~ 100000 ~ 100000 1

#loop this until all points have been added
execute if entity @a[tag=playerReservation,scores={vsAddPoints=1..}] run scoreboard players set #test value 2
execute if entity @a[tag=playerReservation,scores={vsAddPoints=100..}] run scoreboard players set #test value 3

#turn back time to make this keep running until all points are tallied
execute if score #test value matches 2.. run scoreboard players remove #gameTime value 4
execute if score #test value matches 3 run scoreboard players add #gameTime value 3
