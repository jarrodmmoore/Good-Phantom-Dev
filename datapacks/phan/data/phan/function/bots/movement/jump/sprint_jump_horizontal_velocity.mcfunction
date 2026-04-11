#additive velocity

#note: coord_x2 and coord_z2 is our vector for what direction we're trying to move in. this needs to be set before running this!
#(the way i'm calling this, it will always be set by movement/0_on_ground/_on_ground or movement/1_air/_air)

#x
execute store result score #test value run data get entity @s Motion[0] 2500
scoreboard players operation #test value += #coord_x2 value
execute store result entity @s Motion[0] double 0.0004 run scoreboard players get #test value

#z
execute store result score #test2 value run data get entity @s Motion[2] 2500
scoreboard players operation #test2 value += #coord_z2 value
execute store result entity @s Motion[2] double 0.0004 run scoreboard players get #test2 value


#don't do at 20Hz please
scoreboard players set #botSprintJump value 0