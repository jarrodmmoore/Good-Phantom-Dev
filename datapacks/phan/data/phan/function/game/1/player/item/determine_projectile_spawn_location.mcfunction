#this is janky and has a lot of edge cases where things can go wrong. we'll just have to settle for "good enough"

#where should we spawn the projectile?
#0 = 1.6 blocks up
#1 = 0.5 blocks up (when flying or crawling)
scoreboard players set #test value 0
execute unless block ~ ~1 ~ #phan:not_solid run scoreboard players set #test value 1
execute if score @s fallFlying matches 1 run scoreboard players set #test value 1
#i've  decided to assume that fully underwater players are using the underwater swim animation (afaik we're unable to check for it)
execute if score @s inWater matches 1 unless block ~ ~1 ~ #phan:not_solid_not_water run scoreboard players set #test value 1


#Q: why not just use "execute anchored eyes"? wouldn't that solve everything?
#A: nope-- doesn't work. i tried using this system and it would always execute the command at the player's feet while in the default stance