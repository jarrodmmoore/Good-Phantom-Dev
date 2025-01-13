#$(level_id) = uid of dream
#$(act) = the index we're adding this at

$data modify storage phan:level_index level_select[$(act)] set value $(level_id)