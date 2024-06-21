#anvil -- 1
#nothing -- 2..

#(run once per second globally during a Versus race)

#pick random number. the larger 1st place's lead is over 2nd, the greater the odds are we anvil them
execute if score #1stPlaceLeadTime value matches ..19 run scoreboard players set #randomRoll value 0
execute if score #1stPlaceLeadTime value matches 20..39 store result score #randomRoll value run random value 1..80
execute if score #1stPlaceLeadTime value matches 40..59 store result score #randomRoll value run random value 1..70
execute if score #1stPlaceLeadTime value matches 60..79 store result score #randomRoll value run random value 1..60
execute if score #1stPlaceLeadTime value matches 80..99 store result score #randomRoll value run random value 1..50
execute if score #1stPlaceLeadTime value matches 100..119 store result score #randomRoll value run random value 1..40
execute if score #1stPlaceLeadTime value matches 120..139 store result score #randomRoll value run random value 1..30
execute if score #1stPlaceLeadTime value matches 140..159 store result score #randomRoll value run random value 1..20
execute if score #1stPlaceLeadTime value matches 160..179 store result score #randomRoll value run random value 1..10
execute if score #1stPlaceLeadTime value matches 180..219 store result score #randomRoll value run random value 1..5
execute if score #1stPlaceLeadTime value matches 220.. run scoreboard players set #randomRoll value 1

#get the item
execute if score #randomRoll value matches 1 run scoreboard players set #mandateAnvil value 1