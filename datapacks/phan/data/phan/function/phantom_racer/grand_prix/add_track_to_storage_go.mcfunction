#$(gp_id) is the id of the cup we're editing
#$(index) is the round number we're writing to

#note for random:
#test2 =
#   1 -- any
#   2 -- race only
#   3 -- battle only

#random
$execute if score #test value matches 0 run data modify storage phan_grand_prix_$(gp_id):round_$(index) dream set value 0
$execute if score #test value matches 0 unless score #test2 value matches 2..3 run data modify storage phan_grand_prix_$(gp_id):round_$(index) act set value 1
$execute if score #test value matches 0 if score #test2 value matches 2 run data modify storage phan_grand_prix_$(gp_id):round_$(index) act set value 2
$execute if score #test value matches 0 if score #test2 value matches 3 run data modify storage phan_grand_prix_$(gp_id):round_$(index) act set value 3

#specific track
$execute if score #test value matches 1.. store result storage phan_grand_prix_$(gp_id):round_$(index) dream int 1 run scoreboard players get #tvChosenLevel value
$execute if score #test value matches 1.. store result storage phan_grand_prix_$(gp_id):round_$(index) act int 1 run scoreboard players get #test value
