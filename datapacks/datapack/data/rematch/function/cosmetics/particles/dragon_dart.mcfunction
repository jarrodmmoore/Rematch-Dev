scoreboard players add @e[tag=Dragon_dart] particle_Dart 1
scoreboard players set @e[scores={particle_Dart=20}] particle_Dart 1
scoreboard players add @e[tag=Dragon_dart_item] particle_Dart 1
scoreboard players reset @e[type=minecraft:player,tag=!Dragon_dart,scores={particle_Dart=0..}] particle_Dart
kill @e[type=minecraft:item,scores={particle_Dart=10}]

execute as @e[tag=Dragon_dart,tag=!playernoparticle,scores={particle_Dart=1}] at @s run summon minecraft:item ~ ~1.8 ~ {Tags:["Dragon_dart_item"],Item:{id:"minecraft:purple_concrete",count:1},Motion:[0.0d,0.9d,0.0d],Age:-32768,PickupDelay:32767}
execute as @e[tag=Dragon_dart_item,tag=!playernoparticle] at @s run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.03 20 normal @a
return 1