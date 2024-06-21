#chunks must be loaded! if not, try again later
scoreboard players set #test value 0
execute if loaded ~-5 ~ ~-5 if loaded ~-5 ~ ~5 if loaded ~5 ~ ~-5 if loaded ~5 ~ ~5 run scoreboard players set #test value 1
execute if score #test value matches 0 run return 0

#make sure the portal filled!
fill ~-5 ~ ~-5 ~5 ~ ~5 end_portal replace barrier
fill ~-5 ~1 ~-5 ~5 ~1 ~5 orange_carpet replace structure_void

#done. did it.
scoreboard players set #vsPortalOpen value 1