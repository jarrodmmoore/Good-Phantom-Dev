#reset players if they fall down
$execute as @a[tag=playing,gamemode=adventure,scores={location_y=$(reset_plane)}] run function phan:game/4/race/respawn
$execute if score #botsEnabled value matches 1.. run tag @e[tag=ai,type=zombie,scores={location_y=$(reset_plane)}] add botRespawn