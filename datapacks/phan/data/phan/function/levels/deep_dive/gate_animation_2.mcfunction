#get ready
execute if score #pTransitionProgress value matches 100040 run clone 4230 42 -23 4240 54 -23 4230 11 -23
execute if score #pTransitionProgress value matches 100040 run clone 4230 42 -28 4240 54 -28 4230 11 -27

#open frames
execute if score #pTransitionProgress value matches 100060 run clone 4230 42 -21 4240 54 -21 4230 11 -23
execute if score #pTransitionProgress value matches 100060 positioned 4235 14 -23 run playsound block.grindstone.use master @a ~ ~ ~ 3 .77
execute if score #pTransitionProgress value matches 100060 positioned 4235 11 -23 run particle dust{color:[0.5,0.3,0.2],scale:1.6} ~ ~.1 ~ 2.4 0.1 0.4 0 50

execute if score #pTransitionProgress value matches 100080 run clone 4230 42 -19 4240 54 -19 4230 11 -23
execute if score #pTransitionProgress value matches 100080 positioned 4235 14 -23 run playsound block.grindstone.use master @a ~ ~ ~ 3 .77
execute if score #pTransitionProgress value matches 100080 positioned 4235 11 -23 run particle dust{color:[0.5,0.3,0.2],scale:1.6} ~ ~.1 ~ 2.4 0.1 0.4 0 50

execute if score #pTransitionProgress value matches 100100 run clone 4230 42 -17 4240 54 -17 4230 11 -23
execute if score #pTransitionProgress value matches 100100 positioned 4235 14 -23 run playsound block.grindstone.use master @a ~ ~ ~ 3 .77
execute if score #pTransitionProgress value matches 100100 positioned 4235 11 -23 run particle dust{color:[0.5,0.3,0.2],scale:1.6} ~ ~.1 ~ 2.4 0.1 0.4 0 50
