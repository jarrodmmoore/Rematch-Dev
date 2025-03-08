execute if entity @e[scores={gameTime=100001},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run tag @a[tag=winner] remove winner
execute if entity @e[scores={gameTime=100001},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run tag @a[gamemode=adventure,tag=!eliminated,team=!spectators] add winner
execute if entity @e[scores={gameTime=100001},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run worldborder set 10000000 0

effect give @a minecraft:instant_health 1 100 true
execute as @a[scores={hp=1..},sort=random,limit=1] at @s run kill @e[type=minecraft:item,distance=..300]
kill @e[tag=phase3trap]
kill @e[tag=phase3item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:trident]
kill @e[type=minecraft:armor_stand,tag=missile]
kill @e[type=minecraft:axolotl]

execute if entity @e[tag=!teamplay,scores={gameTime=100040},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:text/pvp/winner
execute if entity @e[tag=teamplay,scores={gameTime=100040},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:text/pvp/winner_team

#give players with no win effect default one
execute if entity @e[scores={gameTime=100001},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @e[tag=winner,tag=!we_firework,tag=!we_chicken,tag=!we_fish,tag=!we_demo,tag=!we_streamer] run tag @s add we_firework

#firework win effect
execute if entity @e[scores={gameTime=100060},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_firework] at @s run function rematch:game/pvp/winner_firework
execute if entity @e[scores={gameTime=100080},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_firework] at @s run function rematch:game/pvp/winner_firework
execute if entity @e[scores={gameTime=100100},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_firework] at @s run function rematch:game/pvp/winner_firework
execute if entity @e[scores={gameTime=100120},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_firework] at @s run function rematch:game/pvp/winner_firework
execute if entity @e[scores={gameTime=100140},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_firework] at @s run function rematch:game/pvp/winner_firework
execute if entity @e[scores={gameTime=100160},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_firework] at @s run function rematch:game/pvp/winner_firework
execute if entity @e[scores={gameTime=100180},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_firework] at @s run function rematch:game/pvp/winner_firework
execute if entity @e[scores={gameTime=100200},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_firework] at @s run function rematch:game/pvp/winner_firework

#chicken win effect
execute if entity @e[scores={gameTime=100040},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_chicken] at @s run effect give @s minecraft:resistance 100000 255 true
execute if entity @e[scores={gameTime=100040},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_chicken] at @s run function rematch:game/pvp/winner_chicken
execute if entity @e[scores={gameTime=100080},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_chicken] at @s run function rematch:game/pvp/winner_chicken
execute if entity @e[scores={gameTime=100120},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_chicken] at @s run function rematch:game/pvp/winner_chicken
execute if entity @e[scores={gameTime=100160},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_chicken] at @s run function rematch:game/pvp/winner_chicken
execute if entity @e[scores={gameTime=100000..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] if entity @e[gamemode=adventure,tag=winner,tag=we_chicken] run function rematch:game/pvp/egg_chicken_timer
execute if entity @e[scores={gameTime=100280},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_chicken] at @s run effect clear @s
execute if entity @e[scores={gameTime=100280},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_chicken] at @s run kill @e[type=minecraft:chicken,distance=..300]

#fish win effect
execute if entity @e[scores={gameTime=100060},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100065},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100070},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100075},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100080},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100085},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100090},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100095},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100100},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100105},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100110},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100115},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100120},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100125},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100130},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100135},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100140},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100145},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100150},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100155},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100160},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100165},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100170},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100175},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100180},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100185},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100190},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100195},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute if entity @e[scores={gameTime=100200},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_fish] at @s run function rematch:game/pvp/winner_fish
execute as @e[tag=we_f_fish] at @s run particle minecraft:bubble ~ ~-0.2 ~ 0.2 0.2 0.2 1 3 normal @a

#demolition win effect
execute if entity @e[scores={gameTime=100040},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_demo] at @s run function rematch:game/start/hats_tags_give
execute if entity @e[scores={gameTime=100040},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_demo] at @s run clear @s
execute if entity @e[scores={gameTime=100040},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_demo] at @s run function rematch:game/start/hats_tags_clear
execute if entity @e[scores={gameTime=100040},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_demo] at @s run effect clear @s
execute if entity @e[scores={gameTime=100040},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_demo] at @s run effect give @s minecraft:resistance 100000 255 true
execute if entity @e[scores={gameTime=100040},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_demo] at @s run effect give @s minecraft:speed 100000 5 true
execute if entity @e[scores={gameTime=100060},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_demo] at @s run summon minecraft:creeper ~ ~0.5 ~ {Fuse:0s,ExplosionRadius:5b}
execute if entity @e[scores={gameTime=100100},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_demo] at @s run summon minecraft:creeper ~ ~0.5 ~ {Fuse:0s,ExplosionRadius:5b}
execute if entity @e[scores={gameTime=100140},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_demo] at @s run summon minecraft:creeper ~ ~0.5 ~ {Fuse:0s,ExplosionRadius:5b}
execute if entity @e[scores={gameTime=100180},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_demo] at @s run summon minecraft:creeper ~ ~0.5 ~ {Fuse:0s,ExplosionRadius:5b}
execute if entity @e[scores={gameTime=100220},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_demo] at @s run summon minecraft:creeper ~ ~0.5 ~ {Fuse:0s,ExplosionRadius:5b}
execute if entity @e[scores={gameTime=100040..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_demo] at @s run particle minecraft:dust{color:[0.369f,0.369f,0.369f],scale:1.0f} ~ ~2 ~ 0.25 0 0.25 0 5 normal @a
execute if entity @e[scores={gameTime=100290},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_demo] at @s run effect clear @s

#streamer win effect
execute if entity @e[scores={gameTime=100060},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_streamer] at @s run function rematch:game/pvp/winner_streamers
execute if entity @e[scores={gameTime=100080},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_streamer] at @s run function rematch:game/pvp/winner_streamers
execute if entity @e[scores={gameTime=100100},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_streamer] at @s run function rematch:game/pvp/winner_streamers
execute if entity @e[scores={gameTime=100120},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_streamer] at @s run function rematch:game/pvp/winner_streamers
execute if entity @e[scores={gameTime=100140},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_streamer] at @s run function rematch:game/pvp/winner_streamers
execute if entity @e[scores={gameTime=100160},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_streamer] at @s run function rematch:game/pvp/winner_streamers
execute if entity @e[scores={gameTime=100180},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_streamer] at @s run function rematch:game/pvp/winner_streamers
execute if entity @e[scores={gameTime=100200},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,tag=winner,tag=we_streamer] at @s run function rematch:game/pvp/winner_streamers
scoreboard players add @e[tag=we_s_streamer] gameTime 1
execute if entity @e[tag=we_s_streamer,scores={gameTime=1}] as @e[tag=we_s_streamer,scores={gameTime=1}] at @s run particle minecraft:dust{color:[1.0f,0.0f,0.0f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=2}] as @e[tag=we_s_streamer,scores={gameTime=2}] at @s run particle minecraft:dust{color:[1.0f,0.235f,0.0f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=3}] as @e[tag=we_s_streamer,scores={gameTime=3}] at @s run particle minecraft:dust{color:[1.0f,0.502f,0.0f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=4}] as @e[tag=we_s_streamer,scores={gameTime=4}] at @s run particle minecraft:dust{color:[1.0f,0.702f,0.012f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=5}] as @e[tag=we_s_streamer,scores={gameTime=5}] at @s run particle minecraft:dust{color:[1.0f,1.0f,0.0f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=6}] as @e[tag=we_s_streamer,scores={gameTime=6}] at @s run particle minecraft:dust{color:[0.765f,1.0f,0.0f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=7}] as @e[tag=we_s_streamer,scores={gameTime=7}] at @s run particle minecraft:dust{color:[0.502f,1.0f,0.0f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=8}] as @e[tag=we_s_streamer,scores={gameTime=8}] at @s run particle minecraft:dust{color:[0.235f,1.0f,0.0f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=9}] as @e[tag=we_s_streamer,scores={gameTime=9}] at @s run particle minecraft:dust{color:[0.0f,1.0f,0.467f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=10}] as @e[tag=we_s_streamer,scores={gameTime=10}] at @s run particle minecraft:dust{color:[0.0f,1.0f,0.867f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=11}] as @e[tag=we_s_streamer,scores={gameTime=11}] at @s run particle minecraft:dust{color:[0.012f,0.573f,1.0f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=12}] as @e[tag=we_s_streamer,scores={gameTime=12}] at @s run particle minecraft:dust{color:[0.0f,0.165f,1.0f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=13}] as @e[tag=we_s_streamer,scores={gameTime=13}] at @s run particle minecraft:dust{color:[0.267f,0.0f,1.0f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=14}] as @e[tag=we_s_streamer,scores={gameTime=14}] at @s run particle minecraft:dust{color:[0.631f,0.0f,1.0f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=15}] as @e[tag=we_s_streamer,scores={gameTime=15}] at @s run particle minecraft:dust{color:[0.902f,0.0f,1.0f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=16}] as @e[tag=we_s_streamer,scores={gameTime=16}] at @s run particle minecraft:dust{color:[1.0f,0.0f,0.765f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=17}] as @e[tag=we_s_streamer,scores={gameTime=17}] at @s run particle minecraft:dust{color:[1.0f,0.0f,0.502f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=18}] as @e[tag=we_s_streamer,scores={gameTime=18}] at @s run particle minecraft:dust{color:[1.0f,0.0f,0.0f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=19}] as @e[tag=we_s_streamer,scores={gameTime=19}] at @s run particle minecraft:dust{color:[1.0f,0.235f,0.0f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @e[tag=we_s_streamer,scores={gameTime=20}] as @e[tag=we_s_streamer,scores={gameTime=20}] at @s run particle minecraft:dust{color:[1.0f,0.502f,0.0f],scale:1.0f} ~ ~ ~ 0 0 0 0 1 normal @a
execute as @e[type=minecraft:snowball,tag=we_s_streamer] at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 0.5 2
kill @e[type=minecraft:snowball,tag=we_s_streamer,scores={gameTime=20}]

execute if entity @e[tag=effectaxolotl] run kill @e[tag=effectaxolotl]

execute if entity @e[scores={gameTime=100300..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/start/_initialize