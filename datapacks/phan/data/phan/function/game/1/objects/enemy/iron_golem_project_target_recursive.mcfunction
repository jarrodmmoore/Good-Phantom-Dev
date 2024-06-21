scoreboard players remove #recursions value 1

#summon cloud
execute if score #recursions value matches ..0 if loaded ~ ~ ~ run scoreboard players set #test value 1
execute if score #recursions value matches ..0 if loaded ~ ~ ~ run summon area_effect_cloud ~ ~ ~ {Duration:1,UUID:[I;123,160,10,60]}
#0000007b-0000-00a0-0000-000a0000003c

#keep going
execute if score #recursions value matches 1.. positioned ^ ^ ^.65 run function phan:game/1/objects/enemy/iron_golem_project_target_recursive