#announce when admins go afk or return to the game
execute if score #adminMode value matches 1 if entity @a[tag=admin,scores={idleTime=3600}] unless entity @a[tag=admin,scores={idleTime=..3599}] run tellraw @a ["",{text:"\n"},{translate:"gp.misc.admin_idle",italic:true},{text:"\n"}]
execute if score #adminMode value matches 1 if score #requireAdmin value matches 0 if score #announceNotIdle value matches 1 if entity @a[tag=admin,scores={idleTime=..3599}] run tellraw @a ["",{text:"\n"},{translate:"gp.misc.admin_active",italic:true,with:[{selector:"@a[tag=admin,scores={idleTime=..3599}]",color:"yellow",italic:false}]},{text:"\n"}]
scoreboard players set #announceNotIdle value 0
execute if entity @a[tag=admin,scores={idleTime=3600..}] run scoreboard players set #announceNotIdle value 1