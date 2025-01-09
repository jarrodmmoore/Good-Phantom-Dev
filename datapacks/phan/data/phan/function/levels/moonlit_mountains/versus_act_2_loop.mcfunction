#show players a compass in the maze area
execute as @a[tag=playing,gamemode=adventure] at @s if block ~ -55 ~ #phan:area_check run scoreboard players set @s compassShowTime 20