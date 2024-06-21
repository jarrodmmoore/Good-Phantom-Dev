#i'm gonna grab the strings of all 5 signs at once since we can't have two execution positions at the same time

#a line on the leaderboard will look like this:
# (1) - Steve - 100400 - | A |

#placement
data modify storage phan:data tag.line1_1 set from block ~ ~ ~ front_text.messages[3]

#name
data modify storage phan:data tag.line2_1 set from block ~ ~ ~ front_text.messages[0]

#score
data modify storage phan:data tag.line3_1 set from block ~ ~ ~ front_text.messages[1]

#rank
data modify storage phan:data tag.line4_1 set from block ~ ~ ~ front_text.messages[2]

#repeat for the remaining 4 signs
data modify storage phan:data tag.line1_2 set from block ~ ~ ~1 front_text.messages[3]
data modify storage phan:data tag.line2_2 set from block ~ ~ ~1 front_text.messages[0]
data modify storage phan:data tag.line3_2 set from block ~ ~ ~1 front_text.messages[1]
data modify storage phan:data tag.line4_2 set from block ~ ~ ~1 front_text.messages[2]

data modify storage phan:data tag.line1_3 set from block ~ ~ ~2 front_text.messages[3]
data modify storage phan:data tag.line2_3 set from block ~ ~ ~2 front_text.messages[0]
data modify storage phan:data tag.line3_3 set from block ~ ~ ~2 front_text.messages[1]
data modify storage phan:data tag.line4_3 set from block ~ ~ ~2 front_text.messages[2]

data modify storage phan:data tag.line1_4 set from block ~ ~ ~3 front_text.messages[3]
data modify storage phan:data tag.line2_4 set from block ~ ~ ~3 front_text.messages[0]
data modify storage phan:data tag.line3_4 set from block ~ ~ ~3 front_text.messages[1]
data modify storage phan:data tag.line4_4 set from block ~ ~ ~3 front_text.messages[2]

data modify storage phan:data tag.line1_5 set from block ~ ~ ~4 front_text.messages[3]
data modify storage phan:data tag.line2_5 set from block ~ ~ ~4 front_text.messages[0]
data modify storage phan:data tag.line3_5 set from block ~ ~ ~4 front_text.messages[1]
data modify storage phan:data tag.line4_5 set from block ~ ~ ~4 front_text.messages[2]