#old
#respawn if fallen down
#execute as @a[tag=playing,gamemode=adventure,scores={location_y=..40}] run function phan:game/4/race/respawn
#execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,scores={location_y=..40}] run tag @s add botRespawn

#show players a compass in the maze area
execute as @a[tag=playing,gamemode=adventure] at @s if block ~ -55 ~ #phan:area_check run scoreboard players set @s compassShowTime 20