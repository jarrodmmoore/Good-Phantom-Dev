function phan:common/playsound_positionless_macro {sound:"minecraft:block.note_block.hat",targets:"@a[tag=tellMe]",pitch:"1.1",volume:"1"}

#pick a random letter different from the last random letter we drew
execute in overworld run tag @e[type=armor_stand,tag=tempBan,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1] remove tempBan
execute if score @s prevRandom matches 1 in overworld run tag @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=1}] add tempBan
execute if score @s prevRandom matches 2 in overworld run tag @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=2}] add tempBan
execute if score @s prevRandom matches 3 in overworld run tag @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=3}] add tempBan
execute if score @s prevRandom matches 4 in overworld run tag @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={r=4}] add tempBan
execute in overworld run scoreboard players operation #random value = @e[limit=1,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,sort=random,tag=!tempBan,scores={r=1..4}] r

#remember my name
scoreboard players operation @s prevRandom = #random value