#executed by a player or bot (at @s)

#summon visual enderman
execute if score #endermanAge value matches 501 rotated ~ 0 positioned ^ ^ ^1 run function phan:items/enderman_phase_3_summon

#teleport enderman in front of us, looking at us
execute store result score #test4 value run execute if entity @s[type=player,scores={fallFlying=1}]
#play animation with an offset if we're a gliding human player
execute if score #test4 value matches ..0 run function phan:items/enderman_phase_3_animation
execute if score #test4 value matches 1.. positioned ~ ~-1 ~ run function phan:items/enderman_phase_3_animation

#global snatch sound
execute if score #endermanAge value matches 501 as @a[tag=doneWithIntro] at @s run playsound minecraft:entity.evoker_fangs.attack master @s ~ 100000 ~ 100000 2
#enderman dissing noise
execute if score #endermanAge value matches 514 rotated ~ 0 positioned ^ ^ ^6 run playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1.3

#enderman teleports away
execute if score #endermanAge value matches 535 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run function phan:items/enderman_teleports_away