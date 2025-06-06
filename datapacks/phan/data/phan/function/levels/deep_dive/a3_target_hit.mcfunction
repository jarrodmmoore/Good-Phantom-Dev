#platforms for 6 seconds
scoreboard players set #a3_temp_platforms value 120
execute as @a[tag=playing,scores={pCurrentArea=3}] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.beacon.activate",targets:"@s",pitch:"1.75",volume:"1"}

#the target we hit gets cooldown for a sec
scoreboard players set @e[tag=bigTarget,tag=act3Spawn,type=item_display,scores={editArg1=19..}] editArg1 18