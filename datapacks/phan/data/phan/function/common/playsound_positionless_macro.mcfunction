#sound can be heard from anywhere and equally in both ears regardless of position and face direction
$playsound $(sound) master $(targets) -30000000 ~ ~ 1 $(pitch) $(volume)
$playsound $(sound) master $(targets) 30000000 ~ ~ 1 $(pitch) $(volume)

#success rate is not 100%
#sometimes the two sounds are slightly out of sync
#unfortunately this is the best we can do right now.

#using this with longer streamed sounds is probably not a good idea
#for those, you're better off making them stereo instead of mono