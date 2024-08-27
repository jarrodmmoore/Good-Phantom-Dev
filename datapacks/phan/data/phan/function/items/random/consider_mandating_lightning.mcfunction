#exit out if we have assist magic on
execute if score #assist_energy value matches 1.. run return 0
#this mechanic would be really annoying if infinite magic was turned on!
#=====

#lightning -- 1
#nothing -- 2..

#(run once per second globally during a Versus race)

#pick random number. the more energy someone near 1st has, the more likely we lightning them
execute if score #highestMagicUpFront value matches ..8 run scoreboard players set #randomRoll value 0
execute if score #highestMagicUpFront value matches 9 store result score #randomRoll value run random value 1..100
execute if score #highestMagicUpFront value matches 10 store result score #randomRoll value run random value 1..90
execute if score #highestMagicUpFront value matches 11 store result score #randomRoll value run random value 1..80
execute if score #highestMagicUpFront value matches 12 store result score #randomRoll value run random value 1..70
execute if score #highestMagicUpFront value matches 13 store result score #randomRoll value run random value 1..60
execute if score #highestMagicUpFront value matches 14 store result score #randomRoll value run random value 1..50
execute if score #highestMagicUpFront value matches 15 store result score #randomRoll value run random value 1..40
execute if score #highestMagicUpFront value matches 16 store result score #randomRoll value run random value 1..30
execute if score #highestMagicUpFront value matches 17 store result score #randomRoll value run random value 1..20
execute if score #highestMagicUpFront value matches 18.. store result score #randomRoll value run random value 1..10

#get the item
execute if score #randomRoll value matches 1 if score #gameTime value matches 300.. run scoreboard players set #mandateLightning value 1

#forget what we recorded as the highest magic held by a leading player. we will recalculate this for next run
scoreboard players set #highestMagicUpFront value 0