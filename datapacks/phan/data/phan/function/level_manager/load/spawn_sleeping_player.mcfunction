#called with arguments 
#   $(level_uid)
#   $(head_rotation)
#at the location you want the player to be at

$data modify storage phan:data spawn_player_uid set value $(level_uid)
$data modify storage phan:data spawn_player_head_rotation set value '$(head_rotation)'
#get the model we need
$data modify storage phan:data spawn_player_model set from storage phan_dream_$(level_uid):dream_data sleeping_player_model

#kill the old one if it's still around
$kill @e[type=armor_stand,tag=lobbyPlayer$(level_uid)]

#now do it for real
function phan:level_manager/load/spawn_sleeping_player_go with storage phan:data