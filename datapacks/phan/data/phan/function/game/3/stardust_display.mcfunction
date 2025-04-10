#show total on actionbar
title @s actionbar ["",{text:"\uE013"},{text:" "},{score:{name:"@s",objective:"stardustCollected"},color:"yellow"}]

#sync value again
scoreboard players operation @s dStardustCollected = @s stardustCollected