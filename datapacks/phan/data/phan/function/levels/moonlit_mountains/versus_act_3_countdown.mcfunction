#checkpoint at the start plops into place
execute if score #gameTime value matches ..120 unless block -1958 46 -54 air run fill -1958 46 -54 -1958 47 -54 air
execute if score #gameTime value matches ..120 unless block -1949 46 -54 air run fill -1949 46 -54 -1949 47 -54 air

execute if score #gameTime value matches 120 run summon falling_block -1958 60 -54 {BlockState:{Name:"minecraft:white_stained_glass"},Time:1}
execute if score #gameTime value matches 120 run summon falling_block -1949 60 -54 {BlockState:{Name:"minecraft:white_stained_glass"},Time:1}

execute if score #gameTime value matches 140 run summon falling_block -1958 60 -54 {BlockState:{Name:"minecraft:chiseled_quartz_block"},Time:1}
execute if score #gameTime value matches 140 run summon falling_block -1949 60 -54 {BlockState:{Name:"minecraft:chiseled_quartz_block"},Time:1}
