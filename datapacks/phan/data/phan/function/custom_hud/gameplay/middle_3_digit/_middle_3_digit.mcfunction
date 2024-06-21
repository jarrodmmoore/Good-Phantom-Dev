#6 = left end + timer icon + timer digit 1
#7 = timer digit 2
#8 = timer digit 3 + right end

#SLOT 6
execute if score #assist_time_limit value matches 0 unless score #timeRem100 value = #hudPrev6 value run function phan:custom_hud/gameplay/middle_3_digit/slot6
execute if score #assist_time_limit value matches 1.. unless score #timeRem100 value = #hudPrev6 value run function phan:custom_hud/gameplay/middle_3_digit/slot6_gold
#SLOT 7
execute unless score #timeRem10 value = #hudPrev7 value run function phan:custom_hud/gameplay/middle_3_digit/slot7
#SLOT 8
execute unless score #timeRemSec value = #hudPrev8 value run function phan:custom_hud/gameplay/middle_3_digit/slot8