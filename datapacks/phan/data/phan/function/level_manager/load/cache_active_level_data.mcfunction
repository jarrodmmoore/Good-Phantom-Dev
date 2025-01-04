#copy data of chosenLevel into the active dream storage
execute store result storage phan:level_index level_id int 1 run scoreboard players get #chosenLevel value
data modify storage phan:level_index filename set value 'phan_dream_active'
function phan:level_manager/export_dream_go with storage phan:level_index
#^ i'm going to keep the code more maintainable by re-using the export dream function

#Q: why do this?
#A: so it's easier to access the dream's data during gameplay without having to index it with a macro every dang time