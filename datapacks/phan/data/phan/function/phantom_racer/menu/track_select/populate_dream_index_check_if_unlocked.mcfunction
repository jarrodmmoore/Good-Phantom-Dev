#don't lock the dream if any of the 4 acts are unlocked
$execute if score #d$(id)a1Unlocked value matches 1.. run return 0
$execute if score #d$(id)a2Unlocked value matches 1.. run return 0
$execute if score #d$(id)a3Unlocked value matches 1.. run return 0
$execute if score #d$(id)a4Unlocked value matches 1.. run return 0
#=====

#nothing available? lock the dream, but still show it in the menu
data modify storage phan:level_index level_id set value -2