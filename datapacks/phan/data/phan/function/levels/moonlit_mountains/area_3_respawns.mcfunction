#reset players that fall down
execute as @a[gamemode=adventure,x=2020,y=77,z=-97,dx=10,dy=10,dz=4] positioned 2027 99 -83 rotated 180 10 run function phan:levels/moonlit_mountains/fake_respawn
execute as @a[gamemode=adventure,x=2080,y=76,z=-99,dx=13,dy=12,dz=4,scores={currentLoad=2}] positioned 2077 101 -108 rotated 320 10 run function phan:levels/moonlit_mountains/fake_respawn

#mark when the player clears the tower so they can respawn higher up
tag @a[gamemode=adventure,tag=climbMoonlitTower,scores={pCurrentArea=3,currentLoad=1}] remove climbMoonlitTower
tag @a[gamemode=adventure,tag=!climbMoonlitTower,scores={pCurrentArea=3,currentLoad=2,location_y=76..}] add climbMoonlitTower