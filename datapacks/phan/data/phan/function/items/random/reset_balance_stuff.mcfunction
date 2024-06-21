#reset given rockets and etc
scoreboard players set #givenRockets value 0
scoreboard players set #givenMines value 0
scoreboard players set #givenPads value 0

#reset info on previous items we recieved (on each individual player)
scoreboard players set @a lastItemPicked 0
scoreboard players set @a picksSinceSpeed 100
scoreboard players set @a picksSinceBigSpeed 0
scoreboard players set @a picksSinceOffense 100
scoreboard players set @a picksSinceTrap 100
scoreboard players set @a picksSinceGlobal 100
scoreboard players set @a picksSinceUtility 100

#reset cooldowns on some global items
scoreboard players set #cooldownLightning value 500
scoreboard players set #cooldownSquid value 500
scoreboard players set #cooldownAnvil value 500
scoreboard players set #cooldownEnderman value 300

#madated anvil
scoreboard players set #mandateAnvil value 0