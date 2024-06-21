#6 = left end + timer icon
#7 = timer digit 2
#8 = timer digit 3 + right end

#SLOT 6
execute unless score #hudPrev6 value matches -80808 run function phan:custom_hud/gameplay/middle_2_digit/slot6
#SLOT 7
execute unless score #timeRem10 value = #hudPrev7 value run function phan:custom_hud/gameplay/middle_3_digit/slot7
#SLOT 8
execute unless score #timeRemSec value = #hudPrev8 value run function phan:custom_hud/gameplay/middle_3_digit/slot8