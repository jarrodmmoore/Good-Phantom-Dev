#$(index) = the slot we're putting this at
#$(act) = the id of the act (1-4)

$data modify storage phan:level_index act_select[$(index)] set value $(act)

#wait a minute, does this act belong to a stock level? replace the dream with a lock icon if it hasn't been unlocked yet
$scoreboard players set #test value $(level_id)
$execute if score #test value matches ..999 if score #d$(level_id)a$(act)Unlocked value matches 0 run data modify storage phan:level_index act_select[$(index)] set value -2