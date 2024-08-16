#bad if we match
execute if score @s AIBC_id = #checkID value run return 0
#good if we didn't match
return 1