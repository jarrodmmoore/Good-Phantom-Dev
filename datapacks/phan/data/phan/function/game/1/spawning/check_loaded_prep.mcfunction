#note: we came into this function with one ^ ^ ^1 for free. that's because minimum spacing is 1 meter

scoreboard players remove #tempRecursions value 1

#chunk not loaded? say NO to spawning the trail
execute if score #tempRecursions value matches 0 run scoreboard players set #checkChunksLoaded value 0
execute if score #tempRecursions value matches 0 if loaded ~ ~ ~ run function phan:game/1/spawning/check_loaded_confirm

#gotta watch out for this line here which is gonna pile up in the command stack!
#(we're going to sabotage #tempRecursions once we're completely done so it doesn't meet this condition and brutally murder our CPU)
execute if score #tempRecursions value matches 1.. positioned ^ ^ ^1 run function phan:game/1/spawning/check_loaded_prep