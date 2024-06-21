scoreboard players set #lapRecursion value 0
#this messes up the position calculator, but at least we stopped the game from exploding
scoreboard players set @a lap 1
tellraw @a ["",{"text":"[ ! ] Player tampered with lap count! All players have been set to lap 1 to avoid blocking the server due to function recursion.","color":"red"}]