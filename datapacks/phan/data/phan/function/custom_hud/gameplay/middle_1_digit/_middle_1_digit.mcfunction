#6 = left end + timer icon
#7 = timer digit 3
#8 = right end

#SLOT 6
execute unless score #hudPrev6 value matches -80808 run function phan:custom_hud/gameplay/middle_2_digit/slot6
#SLOT 7
execute unless score #timeRemSec value = #hudPrev7 value run function phan:custom_hud/gameplay/middle_1_digit/slot7
#SLOT 8
execute unless score #hudPrev8 value matches -98765 run function phan:custom_hud/gameplay/middle_1_digit/slot8