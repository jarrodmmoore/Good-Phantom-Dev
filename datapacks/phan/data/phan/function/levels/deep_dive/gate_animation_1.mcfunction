#get ready
execute if score #pTransitionProgress value matches 100040 run clone 4021 3 -4 4021 10 5 4021 -14 -4
execute if score #pTransitionProgress value matches 100040 run clone 4023 8 -4 4023 16 5 4024 -14 -4

#open frames
execute if score #pTransitionProgress value matches 100060 run clone 4021 11 -4 4021 18 5 4021 -14 -4
execute if score #pTransitionProgress value matches 100060 positioned 4021 -12 0 run playsound block.grindstone.use master @a ~ ~ ~ 3 .77
execute if score #pTransitionProgress value matches 100060 positioned 4021 -14 0 run particle dust{color:[0.5,0.3,0.2],scale:1.6} ~ ~.1 ~ 0.4 0.1 2.4 0 50

execute if score #pTransitionProgress value matches 100080 run clone 4021 19 -4 4021 26 5 4021 -14 -4
execute if score #pTransitionProgress value matches 100080 positioned 4021 -12 0 run playsound block.grindstone.use master @a ~ ~ ~ 3 .77
execute if score #pTransitionProgress value matches 100080 positioned 4021 -14 0 run particle dust{color:[0.5,0.3,0.2],scale:1.6} ~ ~.1 ~ 0.4 0.1 2.4 0 50

execute if score #pTransitionProgress value matches 100100 run clone 4021 27 -4 4021 34 5 4021 -14 -4
execute if score #pTransitionProgress value matches 100100 positioned 4021 -12 0 run playsound block.grindstone.use master @a ~ ~ ~ 3 .77
execute if score #pTransitionProgress value matches 100100 positioned 4021 -14 0 run particle dust{color:[0.5,0.3,0.2],scale:1.6} ~ ~.1 ~ 0.4 0.1 2.4 0 50
