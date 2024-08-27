#reset given rockets and etc
scoreboard players set #givenRockets value 0
scoreboard players set #givenMines value 0
scoreboard players set #givenPads value 0

#reset info on previous items we received (on each individual player)
scoreboard players set @a lastItemPicked 0
scoreboard players set @a picksSinceSpeed 100
scoreboard players set @a picksSinceBigSpeed 0
scoreboard players set @a picksSinceOffense 100
scoreboard players set @a picksSinceTrap 100
scoreboard players set @a picksSinceGlobal 100
scoreboard players set @a picksSinceUtility 100

#reset cooldowns on some global items
execute store result score #cooldownLightning value run random value 750..1000
execute store result score #cooldownSquid value run random value 850..1450
scoreboard players set #cooldownAnvil value 750
execute store result score #cooldownEnderman value run random value 500..800

#mandated items
scoreboard players set #mandateAnvil value 0
scoreboard players set #mandateLightning value 0