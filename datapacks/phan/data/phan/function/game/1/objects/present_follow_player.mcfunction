scoreboard players operation #findID value = @s playerID
execute as @a[tag=doneWithIntro] if score @s playerID = #findID value run tag @s add presentOwner

#no carrier armor stand? spawn one
scoreboard players set #test value 0
execute as @e[type=armor_stand,tag=presentCarrier] at @s if score @s playerID = #findID value run function phan:game/1/objects/present_carrier
execute if score #test value matches 0 if loaded ~ ~ ~ run function phan:game/1/objects/present_get_player_coordinates
#(we use an armor stand as a vehicle so we can get interpolation on teleport, which normally doesn't happen on display entities)

tag @a[tag=presentOwner] remove presentOwner