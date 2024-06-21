tag @s add sonicBoomSelf

#all other players see a sonic boom relatively close to ourselves
execute if score @s moveDirectionSaved matches 1 rotated 180 0 positioned ^ ^1 ^2 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @a[tag=!sonicBoomSelf]
execute if score @s moveDirectionSaved matches 2 rotated 225 0 positioned ^ ^1 ^2 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @a[tag=!sonicBoomSelf]
execute if score @s moveDirectionSaved matches 3 rotated 270 0 positioned ^ ^1 ^2 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @a[tag=!sonicBoomSelf]
execute if score @s moveDirectionSaved matches 4 rotated 315 0 positioned ^ ^1 ^2 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @a[tag=!sonicBoomSelf]
execute if score @s moveDirectionSaved matches 5 rotated 0 0 positioned ^ ^1 ^2 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @a[tag=!sonicBoomSelf]
execute if score @s moveDirectionSaved matches 6 rotated 45 0 positioned ^ ^1 ^2 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @a[tag=!sonicBoomSelf]
execute if score @s moveDirectionSaved matches 7 rotated 90 0 positioned ^ ^1 ^2 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @a[tag=!sonicBoomSelf]
execute if score @s moveDirectionSaved matches 8 rotated 135 0 positioned ^ ^1 ^2 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @a[tag=!sonicBoomSelf]

#we see a sonic boom further ahead of ourselves to compensate for client/server delay

#check if we're moving in (roughly) the same direction we're facing
scoreboard players operation #rot_yaw value = @s rot_yaw
scoreboard players operation #rot_yaw value %= #360 value
scoreboard players set #test value 0
execute if score @s moveDirectionSaved matches 1 if score #rot_yaw value matches 115..245 run scoreboard players set #test value 1
execute if score @s moveDirectionSaved matches 2 if score #rot_yaw value matches 182..312 run scoreboard players set #test value 1
execute if score @s moveDirectionSaved matches 3 if score #rot_yaw value matches 205..335 run scoreboard players set #test value 1
execute if score @s moveDirectionSaved matches 4 if score #rot_yaw value matches 272.. run scoreboard players set #test value 1
execute if score @s moveDirectionSaved matches 4 if score #rot_yaw value matches ..42 run scoreboard players set #test value 1
execute if score @s moveDirectionSaved matches 5 if score #rot_yaw value matches 295.. run scoreboard players set #test value 1
execute if score @s moveDirectionSaved matches 5 if score #rot_yaw value matches ..65 run scoreboard players set #test value 1
execute if score @s moveDirectionSaved matches 6 if score #rot_yaw value matches 2..132 run scoreboard players set #test value 1
execute if score @s moveDirectionSaved matches 7 if score #rot_yaw value matches 25..155 run scoreboard players set #test value 1
execute if score @s moveDirectionSaved matches 8 if score #rot_yaw value matches 92..242 run scoreboard players set #test value 1

#in water: show visual at different location
execute if score #test value matches 1 if block ~ ~1.5 ~ water run scoreboard players set #test value 2
execute if score #test value matches 2 positioned ^ ^.35 ^4 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @s

#test passed: play the sonic boom in the exact direction we're facing
execute if score #test value matches 1 if score @s moveVelocity matches ..280 rotated ~ 0 positioned ^ ^1.6 ^4 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @s
execute if score #test value matches 1 if score @s moveVelocity matches 281..360 rotated ~ 0 positioned ^ ^1.6 ^5 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @s
execute if score #test value matches 1 if score @s moveVelocity matches 361..440 rotated ~ 0 positioned ^ ^1.6 ^6 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @s
execute if score #test value matches 1 if score @s moveVelocity matches 441.. rotated ~ 0 positioned ^ ^1.6 ^7 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @s

#test failed: play the sonic boom in the direction we're strafing
execute if score #test value matches 0 if score @s moveDirectionSaved matches 1 rotated 180 0 positioned ^ ^1.6 ^4 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @s
execute if score #test value matches 0 if score @s moveDirectionSaved matches 2 rotated 225 0 positioned ^ ^1.6 ^4 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @s
execute if score #test value matches 0 if score @s moveDirectionSaved matches 3 rotated 270 0 positioned ^ ^1.6 ^4 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @s
execute if score #test value matches 0 if score @s moveDirectionSaved matches 4 rotated 315 0 positioned ^ ^1.6 ^4 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @s
execute if score #test value matches 0 if score @s moveDirectionSaved matches 5 rotated 0 0 positioned ^ ^1.6 ^4 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @s
execute if score #test value matches 0 if score @s moveDirectionSaved matches 6 rotated 45 0 positioned ^ ^1.6 ^4 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @s
execute if score #test value matches 0 if score @s moveDirectionSaved matches 7 rotated 90 0 positioned ^ ^1.6 ^4 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @s
execute if score #test value matches 0 if score @s moveDirectionSaved matches 8 rotated 135 0 positioned ^ ^1.6 ^4 run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @s

tag @s remove sonicBoomSelf