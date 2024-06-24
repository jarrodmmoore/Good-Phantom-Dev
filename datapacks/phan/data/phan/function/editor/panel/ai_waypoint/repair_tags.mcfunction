execute at @s run particle heart ~ ~.5 ~ 0 0 0 1 1

tag @s remove AIBC_midAir
execute at @s if block ~ ~-1 ~ #phan:not_solid_not_water if block ~ ~-2 ~ #phan:not_solid_not_water run tag @s add AIBC_midAir