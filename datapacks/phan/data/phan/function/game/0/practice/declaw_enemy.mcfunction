#must have NoAI if we're not using artificialHP
execute if entity @s[tag=!artificialHP] run data merge entity @s {NoAI:1b}
tag @s add declawed