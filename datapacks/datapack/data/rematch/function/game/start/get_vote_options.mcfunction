#clear previous stuff just in case
tag @e[tag=chosenArena] remove chosenArena
tag @e[tag=voteOption] remove voteOption
tag @e[tag=vote1] remove vote1
tag @e[tag=vote2] remove vote2
tag @e[tag=vote3] remove vote3
scoreboard objectives remove voteCount
scoreboard objectives add voteCount dummy
tag @e[tag=setme] remove setme

#vote option 1
tag @e[tag=arenaStand,tag=!voteOption,sort=random,limit=1] add setme
tag @e[tag=setme] add voteOption
tag @e[tag=setme] add vote1
tag @e[tag=setme] remove setme

#vote option 2
tag @e[tag=arenaStand,tag=!voteOption,sort=random,limit=1] add setme
tag @e[tag=setme] add voteOption
tag @e[tag=setme] add vote2
tag @e[tag=setme] remove setme

#vote option 3
tag @e[tag=arenaStand,tag=!voteOption,sort=random,limit=1] add setme
tag @e[tag=setme] add voteOption
tag @e[tag=setme] add vote3
tag @e[tag=setme] remove setme

#SNUDDER MADO
return 1