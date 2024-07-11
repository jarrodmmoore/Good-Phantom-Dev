#executed by a player (at @s)

#summon visual enderman
execute if score #endermanAge value matches 1 rotated ~ 0 positioned ^ ^ ^7 run function phan:items/enderman_phase_1_summon

#teleport enderman in front of us, looking at us
execute if score #endermanAge value matches ..29 rotated ~ 0 positioned ^ ^ ^7 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~

#global sound cue
execute if score #endermanAge value matches 16 as @a[tag=doneWithIntro] at @s run playsound minecraft:entity.enderman.ambient master @s ~ 100000 ~ 100000
#yes, we're making it globally audible.
#why?
#because i think this will lead to some interesting counter-play and mind games >:)

#enderman teleports away
execute if score #endermanAge value matches 30 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run function phan:items/enderman_teleports_away