#executed by the podium sequence camera

#all players should be locked to our viewpoint
gamemode spectator @a[tag=doneWithIntro,gamemode=!spectator]
execute as @a[tag=doneWithIntro] run spectate @e[limit=1,type=armor_stand,distance=..1,tag=podiumPlayerCamera]