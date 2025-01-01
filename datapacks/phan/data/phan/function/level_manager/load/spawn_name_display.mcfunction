#called with arguments 
#   $(level_uid)
#   $(rotation)
#   $(offset_x)
#   $(offset_z)

$data modify storage phan:data spawn_player_uid set value $(level_uid)
#rotation, offset
$data modify storage phan:data spawn_text_rotation set value '$(rotation)'
$data modify storage phan:data spawn_nudge_x set value '$(offset_x)'
$data modify storage phan:data spawn_nudge_y set value '$(offset_y)'
$data modify storage phan:data spawn_nudge_z set value '$(offset_z)'

#kill the old one if it's still around
$kill @e[type=text_display,tag=lobbyNameDisplay$(level_uid)]


#now do it for real
function phan:level_manager/load/spawn_name_display_go with storage phan:data