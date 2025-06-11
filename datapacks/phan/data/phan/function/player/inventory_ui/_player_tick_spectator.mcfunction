#stagger for performance

#top row stuff
execute if score #5Hz value matches 0 run function phan:player/inventory_ui/spectator/cycle_1

#second row stuff
execute if score #5Hz value matches 1 run function phan:player/inventory_ui/spectator/cycle_2
execute if score #5Hz value matches 2 run function phan:player/inventory_ui/spectator/cycle_3
execute if score #5Hz value matches 3 run function phan:player/inventory_ui/spectator/cycle_4