#fail-safe: we will eventually exit this mode and be a normal spectator
scoreboard players add @s specDoneLoading 1

#blindness
effect give @s blindness 5 1 true

#tag and get data of nearest player
scoreboard players set #foundSpec value 0
execute as @a[limit=1,sort=nearest,tag=playing] run function phan:game/1/spectator/spectator_target_player
execute if score #foundSpec value matches 0 run scoreboard players add @s specDoneLoading 2

#teleport to the player we're spectating and get slow falling
execute if score #foundSpec value matches 1.. run gamemode adventure @s[gamemode=!adventure]
execute if score #foundSpec value matches 1.. if score #5Hz value matches 1 run tp @s @a[tag=specTarget,limit=1]
execute if score #foundSpec value matches 1.. run effect give @s slow_falling 3 1 true

#we're done loading when the player we're spectating is done loading
execute if score #foundSpec value matches 1.. if entity @a[tag=specTarget,scores={specDoneLoading=600..}] run scoreboard players set @s specDoneLoading 600
execute if score @s specDoneLoading matches 600.. run effect clear @s blindness

#cleanup
tag @a[tag=specTarget] remove specTarget