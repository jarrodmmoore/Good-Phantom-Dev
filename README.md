# Good Phantom
A Minecraft: Java Edition map where you play as a phantom and enter the dreams of Minecraft players.

## Installation
This repository is the world file containing everything needed to play the map. It should be placed in `.minecraft/saves` as an uncompressed folder.

## Links
- Curseforge page: https://www.curseforge.com/minecraft/worlds/good-phantom
- Planet Minecraft page: https://www.planetminecraft.com/project/good-phantom-action-adventure-game/
- StickyPiston trial page: https://trial.stickypiston.co/map/goodphantom

## Media
- Official trailer: https://youtu.be/0c8SP6h9me8?si=108gNMYCuD6QtGGf
- Process of art-passing the levels: https://youtu.be/J9wui_me8Kc?si=6bcZs1Ya24zvStlU
- Realms blog post: https://www.minecraft.net/en-us/article/new-on-realms-being-nice-to-people

---
# About
## Modes of play
 - **Score Attack** *(1-3 players)* -- Collect Ever Eyes to complete the portal on each stage before time runs out. Build up a combo by performing actions in quick succession to get a good letter rank.
 - **Portal Race** *(1-24 players)* -- Race through each stage and enter the portal before your opponents. Players can use a variety of items to take the lead or hinder their opponents. Points are given based on placement, and a trophy is given to the player with the highest overall score after 3 rounds.
 - **Time Attack** *(1 player)* -- Play with the same rules as Score Attack, except you're graded solely based on how quickly you enter all 3 portals.

## Dreams
Good Phantom hosts 5 dreams that players can play in.
- *Pastel Palace* -- A pink paradise in the sky, centered around a castle.
- *Moonlit Mountains* -- A gloomy, mountainous level with glowing flowers and hints of oriental architecture.
- *Neon Nightway* -- A city with a vaporwave aesthetic and lots of alternate routes.
- *Deep Dive* -- A gigantic vertical waterfall level that gives way to a ruined underwater society mixed with caverns.
- *Shattered City* -- A floating gothic city ravaged by tornadoes.

Each dream has 3 sub-levels, or "acts".

There is also a small practice area outside of the 5 dreams where players can get acclimated with the controls and game mechanics. If we find time, we would like to expand this into a full 3-act dream called "Phantom Forest".

It is possible to add custom dreams into the map, but it currently requires a lot of meddling in the map's datapack. See folder `functions/levels`.

## Music
Features music by Back in August. https://backinaugust.bandcamp.com/

Many music tracks are borrowed and 1 is original.

The music is safe for use on YouTube and other platforms.

## Yeggs Spring Map Jam 2023
Good Phantom was initially created for a Yeggs map jam. This early version featured 2 & 1/3 dreams that were playable in Score Attack mode.

---
# Development
## Level Editing
Enter Creative Mode and run the command `/trigger editor` to gain access to the editor. You can use this to place objects, pickups, and bot waypoints onto your levels.

## Useful commands
- `/function phan:__unlock_all_levels` -- Unlocks all dreams.
- `/function phan:game/0/summon_props` -- Re-summon entities and leaderboard displays in the lobby.

## Note: Resource Pack
Development branches might be missing resources.zip. It's easier to develop a resource pack that is uncompressed. Holler at me if this is a problem.
