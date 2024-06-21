scoreboard players set #test value 0
scoreboard players set #timeDiff value 0

execute if score @s checkFake matches 1..5 run function phan:game/4/race/checkpoint/timestamp/_index_1_5
execute if score @s checkFake matches 6..10 run function phan:game/4/race/checkpoint/timestamp/_index_6_10
execute if score @s checkFake matches 11..15 run function phan:game/4/race/checkpoint/timestamp/_index_11_15
execute if score @s checkFake matches 16..20 run function phan:game/4/race/checkpoint/timestamp/_index_16_20
execute if score @s checkFake matches 21..25 run function phan:game/4/race/checkpoint/timestamp/_index_21_25

#now determine item balance depending on what timeDiff we got
function phan:items/random/determine_balance