execute if score @s editNode matches 9 run data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.baddie"}]'
#baddie spawn type
execute if score @s editArg1 matches ..-4 run tellraw @s ["",{"text":"(editArg1) spawn type: proximity spawner (100 blocks)","italic":true}]
execute if score @s editArg1 matches -3 run tellraw @s ["",{"text":"(editArg1) spawn type: proximity spawner (10 blocks)","italic":true}]
execute if score @s editArg1 matches -2 run tellraw @s ["",{"text":"(editArg1) spawn type: proximity spawner (15 blocks)","italic":true}]
execute if score @s editArg1 matches -1 run tellraw @s ["",{"text":"(editArg1) spawn type: proximity spawner (20 blocks)","italic":true}]
execute if score @s editArg1 matches 0 run tellraw @s ["",{"text":"(editArg1) spawn type: proximity spawner (25 blocks)","italic":true}]
execute if score @s editArg1 matches 1 run tellraw @s ["",{"text":"(editArg1) spawn type: raw enemy spawn","italic":true}]
execute if score @s editArg1 matches 2.. run tellraw @s ["",{"text":"(editArg1) spawn type: repeating enemy spawn","italic":true}]
#baddie spawn entity
execute unless score @s editArg2 matches 2.. run tellraw @s ["",{"text":"(editArg2) enemy type: zombie","italic":true}]
execute if score @s editArg2 matches 2 run tellraw @s ["",{"text":"(editArg2) enemy type: zombie knight","italic":true}]
execute if score @s editArg2 matches 3 run tellraw @s ["",{"text":"(editArg2) enemy type: skeleton","italic":true}]
execute if score @s editArg2 matches 4 run tellraw @s ["",{"text":"(editArg2) enemy type: vindicator","italic":true}]
execute if score @s editArg2 matches 5 run tellraw @s ["",{"text":"(editArg2) enemy type: baby ghast","italic":true}]
execute if score @s editArg2 matches 6 run tellraw @s ["",{"text":"(editArg2) enemy type: guardian","italic":true}]
execute if score @s editArg2 matches 7 run tellraw @s ["",{"text":"(editArg2) enemy type: dispenser","italic":true}]
execute if score @s editArg2 matches 8 run tellraw @s ["",{"text":"(editArg2) enemy type: iron golem","italic":true}]
execute if score @s editArg2 matches 9 run tellraw @s ["",{"text":"(editArg2) enemy type: tnt yeeter","italic":true}]
execute if score @s editArg2 matches 10 run tellraw @s ["",{"text":"(editArg2) enemy type: shulker","italic":true}]
execute if score @s editArg2 matches 11 run tellraw @s ["",{"text":"(editArg2) enemy type: vex","italic":true}]
execute if score @s editArg2 matches 12 run tellraw @s ["",{"text":"(editArg2) enemy type: mine","italic":true}]
#baddie movement rail
function phan:editor/panel/calculate_fwd_back_delay
execute if score @s editArg2 matches 5 if score @s editArg3 matches 0 run tellraw @s ["",{"text":"(editArg3) movement: none","italic":true}]
execute if score @s editArg2 matches 5 if score @s editArg3 matches 1 run tellraw @s ["",{"text":"(editArg3) movement: tight circle","italic":true}]
execute if score @s editArg2 matches 5 if score @s editArg3 matches 2 run tellraw @s ["",{"text":"(editArg3) movement: wide circle","italic":true}]
execute if score @s editArg2 matches 5 if score @s editArg3 matches 3.. run tellraw @s ["",{"text":"(editArg3) movement: forward/back, delay: ","italic":true},{"score":{"name":"#movementDelay","objective":"value"},"italic":true},{"text":" ticks","italic":true}]
execute if score @s editArg2 matches 12 if score @s editArg3 matches 0 run tellraw @s ["",{"text":"(editArg3) movement: none","italic":true}]
execute if score @s editArg2 matches 12 if score @s editArg3 matches 1 run tellraw @s ["",{"text":"(editArg3) movement: tight circle","italic":true}]
execute if score @s editArg2 matches 12 if score @s editArg3 matches 2 run tellraw @s ["",{"text":"(editArg3) movement: wide circle","italic":true}]
execute if score @s editArg2 matches 12 if score @s editArg3 matches 3.. run tellraw @s ["",{"text":"(editArg3) movement: forward/back, delay: ","italic":true},{"score":{"name":"#movementDelay","objective":"value"},"italic":true},{"text":" ticks","italic":true}]
#shulker attack delay
function phan:editor/panel/calculate_shulker_delay
execute if score @s editArg2 matches 10 unless score @s editArg1 matches 0 run tellraw @s ["",{"text":"(editArg3) delay before attacking: ","italic":true},{"score":{"name":"#movementDelay","objective":"value"},"italic":true},{"text":" ticks","italic":true}]
