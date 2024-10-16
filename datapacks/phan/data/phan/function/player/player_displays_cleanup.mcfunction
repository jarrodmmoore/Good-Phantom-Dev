xp set @a 100 levels
xp set @a 0 points
effect clear @a
gamemode adventure @a[tag=!admin,tag=doneWithIntro]
clear @a
execute as @a run function phan:player/set_title_times
title @a actionbar [""]
title @a subtitle [""]
title @a title [""]