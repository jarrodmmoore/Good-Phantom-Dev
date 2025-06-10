#count down
scoreboard players remove #a3_temp_platforms value 1

#ticking sound
scoreboard players operation #test value = #a3_temp_platforms value
scoreboard players operation #test value %= #20 value
execute if score #test value matches 19 as @a[tag=playing,scores={pCurrentArea=3}] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.note_block.hat",targets:"@s",pitch:"0.8"}

#power-down sound effect
execute if score #a3_temp_platforms value matches 0 as @a[tag=playing,scores={pCurrentArea=3}] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.beacon.deactivate",targets:"@s",pitch:"1.75"}

#all targets mut be green but still hittable...
execute as @e[tag=bigTarget,tag=act3Spawn] unless entity @s[tag=shootable,scores={editArg1=2..9}] unless entity @s[scores={editArg1=10..}] at @s run function phan:levels/deep_dive/a3_enforce_target_state
scoreboard players set @e[tag=bigTarget,tag=act3Spawn,scores={editArg1=2..9}] editArg1 3

#make sure platforms are solid!
execute if score #a3_temp_platforms value matches 41.. run function phan:levels/deep_dive/a3_platforms_enabled_solid
execute if score #a3_temp_platforms value matches ..40 run function phan:levels/deep_dive/a3_platforms_enabled_flashing