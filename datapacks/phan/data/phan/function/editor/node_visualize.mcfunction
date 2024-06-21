#show core and face direction
particle dust{color:[1,1,1],scale:1.2} ~ ~ ~
particle dust{color:[0.8,0.8,0.8],scale:0.8} ^ ^ ^.4
particle dust{color:[0.5,0.5,0.5],scale:0.5} ^ ^ ^.8
particle dust{color:[0.2,0.2,0.2],scale:0.2} ^ ^ ^1.2

#show the name
execute if score #5Hz value matches 0 run function phan:editor/node_visualize_name

#draw checkpoint boundaries
execute if score #editVisualTimer value matches 1 if score @s editNode matches 18 run function phan:editor/checkpoint/start_drawing_bounds
execute if score #editVisualTimer value matches 1 if score @s editNode matches 20..21 run function phan:editor/checkpoint/start_drawing_bounds_reset_zone
execute if score #editVisualTimer value matches 1 if score @s editNode matches 22 run function phan:editor/checkpoint/start_drawing_bounds_loading_zone