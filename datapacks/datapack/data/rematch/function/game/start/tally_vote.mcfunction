scoreboard players reset @e[scores={voteCount=..9999}] voteCount

tag @e[tag=vote1] add voteOption
tag @e[tag=vote2] add voteOption
tag @e[tag=vote3] add voteOption

scoreboard players set @e[tag=voteOption] voteCount 0

execute as @e[tag=playerVote1,team=players] run scoreboard players add @e[tag=vote1] voteCount 1
execute as @e[tag=playerVote2,team=players] run scoreboard players add @e[tag=vote2] voteCount 1
execute as @e[tag=playerVote3,team=players] run scoreboard players add @e[tag=vote3] voteCount 1

#votes for invalid tracks are rejected
tag @e[tag=invalidArena] remove invalidArena
tag @e[tag=voteOption,tag=!arenaStand] add invalidArena
scoreboard players set @e[tag=voteOption,tag=!arenaStand] voteCount 0

tag @a remove playerVote1
tag @a remove playerVote2
tag @a remove playerVote3

#max number of player votes this function will count per vote option is 2048
#highly unlikely this will EVER be reached, but we may as well support up to that number since it's easy to do
scoreboard players set @e[scores={voteCount=2048..}] voteCount 2048

#this sequence will leave the highest voted track (or multiple in the case of a tie) at voteCount=0
#the other tracks that didn't win will have a negative number
execute if entity @e[tag=voteOption,scores={voteCount=1024..}] run scoreboard players remove @e[tag=voteOption,scores={voteCount=..9999}] voteCount 1024
execute if entity @e[tag=voteOption,scores={voteCount=512..}] run scoreboard players remove @e[tag=voteOption,scores={voteCount=..9999}] voteCount 512
execute if entity @e[tag=voteOption,scores={voteCount=256..}] run scoreboard players remove @e[tag=voteOption,scores={voteCount=..9999}] voteCount 256
execute if entity @e[tag=voteOption,scores={voteCount=128..}] run scoreboard players remove @e[tag=voteOption,scores={voteCount=..9999}] voteCount 128
execute if entity @e[tag=voteOption,scores={voteCount=64..}] run scoreboard players remove @e[tag=voteOption,scores={voteCount=..9999}] voteCount 64
execute if entity @e[tag=voteOption,scores={voteCount=32..}] run scoreboard players remove @e[tag=voteOption,scores={voteCount=..9999}] voteCount 32
execute if entity @e[tag=voteOption,scores={voteCount=16..}] run scoreboard players remove @e[tag=voteOption,scores={voteCount=..9999}] voteCount 16
execute if entity @e[tag=voteOption,scores={voteCount=8..}] run scoreboard players remove @e[tag=voteOption,scores={voteCount=..9999}] voteCount 8
execute if entity @e[tag=voteOption,scores={voteCount=4..}] run scoreboard players remove @e[tag=voteOption,scores={voteCount=..9999}] voteCount 4
execute if entity @e[tag=voteOption,scores={voteCount=2..}] run scoreboard players remove @e[tag=voteOption,scores={voteCount=..9999}] voteCount 2
execute if entity @e[tag=voteOption,scores={voteCount=1..}] run scoreboard players remove @e[tag=voteOption,scores={voteCount=..9999}] voteCount 1
execute if entity @e[tag=voteOption,scores={voteCount=1..}] run scoreboard players remove @e[tag=voteOption,scores={voteCount=..9999}] voteCount 1

#choose one of the frontrunners at random
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 2 2
tag @e[type=minecraft:armor_stand,tag=voteOption,tag=!invalidArena,scores={voteCount=0..},sort=random,limit=1] add chosenArena
execute as @e[tag=chosenArena,limit=1] run function rematch:game/start/vote_announce_index

tag @e[tag=invalidArena] remove invalidArena
return 1