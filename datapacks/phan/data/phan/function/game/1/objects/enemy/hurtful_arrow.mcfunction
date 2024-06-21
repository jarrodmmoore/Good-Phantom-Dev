#arrow is particle. real arrows are invisible because otherwise they'd look terrible when stuck to the player
particle dust{color:[1,0,0],scale:1.2} ~ ~ ~ 0.03 0.03 0.03 0 1

#players take time loss when hit by these
scoreboard players set @a[tag=playing,distance=..5] hurtfulTime 3

#delete if we hit the ground
execute if entity @s[nbt={inGround:1b}] unless score @s lifespan matches 0.. run scoreboard players set @s lifespan 1