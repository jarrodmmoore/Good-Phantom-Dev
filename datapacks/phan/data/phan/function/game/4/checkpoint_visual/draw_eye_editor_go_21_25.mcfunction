#show particle to the proper players
execute if score #checkpointNum value matches 21 run particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"14"}}} ~ ~ ~ 0 0 0 1 1 force @a[tag=!vsHomeStretch,scores={check=20}]
execute if score #checkpointNum value matches 22 run particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"14"}}} ~ ~ ~ 0 0 0 1 1 force @a[tag=!vsHomeStretch,scores={check=21}]
execute if score #checkpointNum value matches 23 run particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"14"}}} ~ ~ ~ 0 0 0 1 1 force @a[tag=!vsHomeStretch,scores={check=22}]
execute if score #checkpointNum value matches 24 run particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"14"}}} ~ ~ ~ 0 0 0 1 1 force @a[tag=!vsHomeStretch,scores={check=23}]
execute if score #checkpointNum value matches 25 run particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"14"}}} ~ ~ ~ 0 0 0 1 1 force @a[tag=!vsHomeStretch,scores={check=24}]