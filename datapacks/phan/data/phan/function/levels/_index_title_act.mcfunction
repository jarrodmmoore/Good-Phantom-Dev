#race mode
execute if score #gameState value matches 4 if score #vAct value matches 1 run tellraw @s ["",{"nbt":"name_text","storage":"phan_dream_active:dream_data","interpret":true,"bold":true},{"text":" | "},{"nbt":"act_name","storage":"phan_dream_active:pr_act_1","interpret":false}]
execute if score #gameState value matches 4 if score #vAct value matches 2 run tellraw @s ["",{"nbt":"name_text","storage":"phan_dream_active:dream_data","interpret":true,"bold":true},{"text":" | "},{"nbt":"act_name","storage":"phan_dream_active:pr_act_2","interpret":false}]
execute if score #gameState value matches 4 if score #vAct value matches 3 run tellraw @s ["",{"nbt":"name_text","storage":"phan_dream_active:dream_data","interpret":true,"bold":true},{"text":" | "},{"nbt":"act_name","storage":"phan_dream_active:pr_act_3","interpret":false}]
execute if score #gameState value matches 4 if score #vAct value matches 4 run tellraw @s ["",{"nbt":"name_text","storage":"phan_dream_active:dream_data","interpret":true,"bold":true},{"text":" | "},{"nbt":"act_name","storage":"phan_dream_active:pr_act_4","interpret":false}]

#score attack mode
execute unless score #gameState value matches 4 if score #vAct value matches 1 run tellraw @s ["",{"nbt":"name_text","storage":"phan_dream_active:dream_data","interpret":true,"bold":true},{"text":" | "},{"nbt":"act_name","storage":"phan_dream_active:sa_act_1","interpret":false}]
execute unless score #gameState value matches 4 if score #vAct value matches 2 run tellraw @s ["",{"nbt":"name_text","storage":"phan_dream_active:dream_data","interpret":true,"bold":true},{"text":" | "},{"nbt":"act_name","storage":"phan_dream_active:sa_act_2","interpret":false}]
execute unless score #gameState value matches 4 if score #vAct value matches 3 run tellraw @s ["",{"nbt":"name_text","storage":"phan_dream_active:dream_data","interpret":true,"bold":true},{"text":" | "},{"nbt":"act_name","storage":"phan_dream_active:sa_act_3","interpret":false}]
