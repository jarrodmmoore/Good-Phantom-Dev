#do different stuff depending if we found a player to spectate or not
execute if score #foundSpec value matches 0 run function phan:game/1/spectator/spectator_tick_not_found
execute if score #foundSpec value matches 1 if score #spectatingObject value matches ..0 run function phan:game/1/spectator/spectator_tick_found_spectator
execute if score #foundSpec value matches 1 if score #spectatingObject value matches 1.. run function phan:game/1/spectator/spectator_tick_found_spectator_object