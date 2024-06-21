#platforms for 6 seconds
scoreboard players set #a3_temp_platforms value 120
execute as @a[tag=playing,scores={pCurrentArea=3}] at @s run playsound minecraft:block.beacon.activate master @s ~ 100000 ~ 100000 1.75

#the target we hit gets cooldown for a sec
scoreboard players set @e[tag=bigTarget,tag=act3Spawn,type=item_display,scores={editArg1=19..}] editArg1 18