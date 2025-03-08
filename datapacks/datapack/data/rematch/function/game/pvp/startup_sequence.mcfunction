#i really hope this command appeases the gods who kick players for flying despite not flying
execute if entity @e[scores={gameTime=..180},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run effect give @a[gamemode=adventure] minecraft:slow_falling 2 100 true
execute if entity @e[scores={gameTime=..180},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run effect give @a[gamemode=adventure] minecraft:weakness 2 100 true
execute if entity @e[scores={gameTime=..59},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run effect give @a[gamemode=adventure] minecraft:invisibility 2 100 true
#seriously, this has been a thing since 2011

execute if entity @e[scores={gameTime=-38},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] at @a[sort=furthest,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["holdPlayers"]}

#hunger to clear excess saturation points
execute if entity @e[scores={gameTime=140},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run effect give @a minecraft:hunger 3 255 true

#hold players in place while area loads in
execute if entity @e[scores={gameTime=-38},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] at @a[sort=furthest,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["holdPlayers"]}
execute if entity @e[scores={gameTime=-38..61},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run tp @a @e[tag=holdPlayers,sort=furthest,limit=1]
execute if entity @e[scores={gameTime=-38..62},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:text/pvp/loading
execute if entity @e[scores={gameTime=60},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a at @s run spawnpoint @s ~ ~ ~

#now send players to a spawnpoint, clear effects, go adventure mode
execute if entity @e[scores={gameTime=61..62},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/pvp/find_spawnpoints/wait_for_spawnpoints
execute if entity @e[scores={gameTime=63},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/pvp/figure_out_teams
execute if entity @e[tag=!teamplay,scores={gameTime=63},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/pvp/find_spawnpoints/_start
execute if entity @e[tag=teamplay,scores={gameTime=63},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/pvp/find_spawnpoints/_start_teamplay
execute if entity @e[scores={gameTime=63..65},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run effect clear @a minecraft:invisibility
execute if entity @e[scores={gameTime=63..65},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run effect clear @a minecraft:blindness
execute if entity @e[scores={gameTime=64..180},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,team=players] at @s run tp @s @e[type=minecraft:armor_stand,tag=playerSpawn,sort=nearest,limit=1]
execute if entity @e[scores={gameTime=63},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run gamemode adventure @a[team=players]
execute if entity @e[scores={gameTime=63..180},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @a actionbar [""]
execute if entity @e[scores={gameTime=65..110},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run kill @e[tag=holdPlayers]

#ready... fight!
execute if entity @e[scores={gameTime=180},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/pvp/reset_item_scoreboard
execute if entity @e[scores={gameTime=60..180},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run effect clear @a minecraft:invisibility
execute if entity @e[scores={gameTime=64},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:text/announce_phase/phase3
execute if entity @e[scores={gameTime=60},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/pvp/setup_sidebars
execute if entity @e[scores={gameTime=60},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run schedule function rematch:game/pvp/setup_sidebars_teams 4s
execute if entity @e[scores={gameTime=120..205},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:text/pvp/starting_countdown
execute if entity @e[scores={gameTime=200},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run gamerule fallDamage true
execute if entity @e[scores={gameTime=200},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run gamerule drowningDamage true
execute if entity @e[scores={gameTime=200},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run gamerule spectatorsGenerateChunks false
execute if entity @e[scores={gameTime=181..200},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run effect clear @a minecraft:weakness

clear @a minecraft:lime_concrete