#executed by a player (at @s)

#summon visual enderman
execute if score #endermanAge value matches 501 rotated ~ 0 positioned ^ ^ ^1 run function phan:items/enderman_phase_3_summon

#teleport enderman in front of us, looking at us
execute if score #endermanAge value matches 501 rotated ~ 0 positioned ^ ^ ^1 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~
execute if score #endermanAge value matches 502 rotated ~ 0 positioned ^ ^ ^1.4 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~
execute if score #endermanAge value matches 503 rotated ~ 0 positioned ^ ^ ^1.8 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~
execute if score #endermanAge value matches 504 rotated ~ 0 positioned ^ ^ ^2.2 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~
execute if score #endermanAge value matches 505 rotated ~ 0 positioned ^ ^ ^2.6 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~
execute if score #endermanAge value matches 506 rotated ~ 0 positioned ^ ^ ^3 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~
execute if score #endermanAge value matches 507 rotated ~ 0 positioned ^ ^ ^3.4 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~
execute if score #endermanAge value matches 508 rotated ~ 0 positioned ^ ^ ^3.8 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~
execute if score #endermanAge value matches 509 rotated ~ 0 positioned ^ ^ ^4.2 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~
execute if score #endermanAge value matches 510 rotated ~ 0 positioned ^ ^ ^4.6 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~
execute if score #endermanAge value matches 511 rotated ~ 0 positioned ^ ^ ^5 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~
execute if score #endermanAge value matches 512 rotated ~ 0 positioned ^ ^ ^5.4 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~
execute if score #endermanAge value matches 513 rotated ~ 0 positioned ^ ^ ^5.8 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~
execute if score #endermanAge value matches 514 rotated ~ 0 positioned ^ ^ ^6.2 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~
execute if score #endermanAge value matches 515 rotated ~ 0 positioned ^ ^ ^6.6 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~
execute if score #endermanAge value matches 516..530 rotated ~ 0 positioned ^ ^ ^7 rotated ~180 0 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run tp @s ~ ~ ~ ~ ~

#global snatch sound
execute if score #endermanAge value matches 501 as @a[tag=doneWithIntro] at @s run playsound minecraft:entity.evoker_fangs.attack master @s ~ 100000 ~ 100000 2
#enderman dissing noise
execute if score #endermanAge value matches 514 rotated ~ 0 positioned ^ ^ ^6 run playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1.3

#enderman teleports away
execute if score #endermanAge value matches 535 as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run function phan:items/enderman_teleports_away