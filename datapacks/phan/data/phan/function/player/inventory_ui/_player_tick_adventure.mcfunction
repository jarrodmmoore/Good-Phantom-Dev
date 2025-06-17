#stagger for performance

#top row stuff
execute if score #5Hz value matches 0 run function phan:player/inventory_ui/adventure/cycle_1
#execute if score #5Hz value matches 0 if score #gameState value matches 0 run function phan:player/inventory_ui/adventure/cycle_1_empty

#second row stuff
execute if score #5Hz value matches 1 run function phan:player/inventory_ui/adventure/cycle_2
execute if score #5Hz value matches 2 run function phan:player/inventory_ui/adventure/cycle_3
execute if score #5Hz value matches 3 run function phan:player/inventory_ui/adventure/cycle_4