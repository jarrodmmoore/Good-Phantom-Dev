#find player with highest points and give them the crown
scoreboard players set #test value 0
execute as @a[tag=doneWithIntro,scores={versusPoints=1..}] run function phan:game/4/give_crown_to_point_leader_check

#tag leader
tag @a[tag=vsCrown] remove vsCrown
execute if score #hudPeakPlayers value matches 2.. as @a[tag=doneWithIntro,scores={versusPoints=1..}] if score @s versusPoints >= #test value run tag @s add vsCrown