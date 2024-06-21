#nobody using this hudNode? snag it!
scoreboard players set #test value 0
execute as @a[tag=playing,scores={hudNode=1..}] if score @s hudNode = #hudNode value run scoreboard players add #test value 1
execute if score #test value matches 0 run scoreboard players operation @s hudNode = #hudNode value
execute if score #test value matches 0 run scoreboard players set #hudNodesAvailable value 1
execute if score #test value matches 0 if score @s hudNode > #hudNodeHighest value run scoreboard players operation #hudNodeHighest value = @s hudNode

#still don't have a hudNode? check the next one up
scoreboard players add #hudNode value 1
execute if score #hudNode value matches ..32 unless score @s hudNode matches 1.. run function phan:custom_hud/get_hud_node_recursive