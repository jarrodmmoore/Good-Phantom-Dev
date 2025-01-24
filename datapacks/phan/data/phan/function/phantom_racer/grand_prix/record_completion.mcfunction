#executed by a player
execute if score #grandPrixActive value matches 1 run scoreboard players set #cup1Completed value 1
execute if score #grandPrixActive value matches 2 run scoreboard players set #cup2Completed value 1
execute if score #grandPrixActive value matches 3 run scoreboard players set #cup3Completed value 1
execute if score #grandPrixActive value matches 4 run scoreboard players set #cup4Completed value 1

#player has done things.
scoreboard players add @s anyDreamCompleted 1

#special case: consider a dream completed when we've played all grand prix cups with all its individual acts
#pastel palace: cup 1,2,3
execute if score #cup1Completed value matches 1.. if score #cup2Completed value matches 1.. if score #cup3Completed value matches 1.. if score #dream1Completed value matches 0 run scoreboard players add #dreamsCompleted value 1
execute if score #cup1Completed value matches 1.. if score #cup2Completed value matches 1.. if score #cup3Completed value matches 1.. if score #dream1Completed value matches 0 run scoreboard players set #dream1Completed value 1
#moonlit mountains: cup 1,2,4
execute if score #cup1Completed value matches 1.. if score #cup2Completed value matches 1.. if score #cup4Completed value matches 1.. if score #dream2Completed value matches 0 run scoreboard players add #dreamsCompleted value 1
execute if score #cup1Completed value matches 1.. if score #cup2Completed value matches 1.. if score #cup4Completed value matches 1.. if score #dream2Completed value matches 0 run scoreboard players set #dream2Completed value 1
#neon nightway: cup 1,3,4
execute if score #cup1Completed value matches 1.. if score #cup3Completed value matches 1.. if score #cup4Completed value matches 1.. if score #dream4Completed value matches 0 run scoreboard players add #dreamsCompleted value 1
execute if score #cup1Completed value matches 1.. if score #cup3Completed value matches 1.. if score #cup4Completed value matches 1.. if score #dream4Completed value matches 0 run scoreboard players set #dream4Completed value 1
#deep dive: cup 2,3,4
execute if score #cup2Completed value matches 1.. if score #cup3Completed value matches 1.. if score #cup4Completed value matches 1.. if score #dream5Completed value matches 0 run scoreboard players add #dreamsCompleted value 1
execute if score #cup2Completed value matches 1.. if score #cup3Completed value matches 1.. if score #cup4Completed value matches 1.. if score #dream5Completed value matches 0 run scoreboard players set #dream5Completed value 1
#shattered city: not possible! no cup contains act 3
#phantom forest: cup 1,3,4
execute if score #cup1Completed value matches 1.. if score #cup3Completed value matches 1.. if score #cup4Completed value matches 1.. if score #dream6Completed value matches 0 run scoreboard players add #dreamsCompleted value 1
execute if score #cup1Completed value matches 1.. if score #cup3Completed value matches 1.. if score #cup4Completed value matches 1.. if score #dream6Completed value matches 0 run scoreboard players set #dream6Completed value 1
