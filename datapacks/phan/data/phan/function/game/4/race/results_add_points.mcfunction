#sound
execute if entity @a[tag=playerReservation,scores={vsAddPoints=1..}] as @a[tag=doneWithIntro] at @s run playsound minecraft:block.dispenser.fail master @s ~ 100000 ~ 100000 1

#add points!
scoreboard players add @a[tag=playerReservation,scores={vsAddPoints=9..}] versusPoints 9
scoreboard players add @a[tag=playerReservation,scores={vsAddPoints=9..}] vsPointDisplay 9
scoreboard players remove @a[tag=playerReservation,scores={vsAddPoints=9..}] vsAddPoints 9

scoreboard players add @a[tag=playerReservation,scores={vsAddPoints=1..}] versusPoints 1
scoreboard players add @a[tag=playerReservation,scores={vsAddPoints=1..}] vsPointDisplay 1
scoreboard players remove @a[tag=playerReservation,scores={vsAddPoints=1..}] vsAddPoints 1

#loop this until all points have been added
execute if entity @a[tag=playerReservation,scores={vsAddPoints=1..}] run scoreboard players remove #gameTime value 4
execute if entity @a[tag=playerReservation,scores={vsAddPoints=100..}] run scoreboard players add #gameTime value 3