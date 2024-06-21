#do different stuff depending if we found a player to spectate or not
execute if score #foundSpec value matches 0 run function phan:game/1/spectator/spectator_tick_not_found
execute if score #foundSpec value matches 1 run function phan:game/1/spectator/spectator_free_cam_tick