scoreboard players remove @s math 1
scoreboard players remove @a[team=!spectator] layoutID_temp 1

#copy inventory... lot of commands...
execute at @s as @a[scores={layoutID_temp=0},limit=1] run data modify block ~ ~ ~ Items set from entity @s Inventory
execute at @s run tp @s ~1 ~ ~
execute at @s as @a[scores={layoutID_temp=0},limit=1] run item replace block ~ ~ ~ container.0 from entity @s container.27
execute at @s as @a[scores={layoutID_temp=0},limit=1] run item replace block ~ ~ ~ container.1 from entity @s container.28
execute at @s as @a[scores={layoutID_temp=0},limit=1] run item replace block ~ ~ ~ container.2 from entity @s container.29
execute at @s as @a[scores={layoutID_temp=0},limit=1] run item replace block ~ ~ ~ container.3 from entity @s container.30
execute at @s as @a[scores={layoutID_temp=0},limit=1] run item replace block ~ ~ ~ container.4 from entity @s container.31
execute at @s as @a[scores={layoutID_temp=0},limit=1] run item replace block ~ ~ ~ container.5 from entity @s container.32
execute at @s as @a[scores={layoutID_temp=0},limit=1] run item replace block ~ ~ ~ container.6 from entity @s container.33
execute at @s as @a[scores={layoutID_temp=0},limit=1] run item replace block ~ ~ ~ container.7 from entity @s container.34
execute at @s as @a[scores={layoutID_temp=0},limit=1] run item replace block ~ ~ ~ container.8 from entity @s container.35
execute at @s as @a[scores={layoutID_temp=0},limit=1] run item replace block ~ ~ ~ container.9 from entity @s armor.feet
execute at @s as @a[scores={layoutID_temp=0},limit=1] run item replace block ~ ~ ~ container.10 from entity @s armor.legs
execute at @s as @a[scores={layoutID_temp=0},limit=1] run item replace block ~ ~ ~ container.11 from entity @s armor.chest
execute at @s as @a[scores={layoutID_temp=0},limit=1] run item replace block ~ ~ ~ container.12 from entity @s armor.head
execute at @s as @a[scores={layoutID_temp=0},limit=1] run item replace block ~ ~ ~ container.13 from entity @s weapon.offhand

execute at @s run tp @s ~1 ~ ~
execute if entity @s[scores={math=1..}] run function rematch:game/pvp/loadlayouts


return 1