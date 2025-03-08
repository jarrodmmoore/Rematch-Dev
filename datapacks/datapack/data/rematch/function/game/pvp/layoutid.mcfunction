scoreboard players operation @r[scores={layoutID=0}] layoutID += @e[tag=layoutstand,limit=1] layoutID
scoreboard players add @e[tag=layoutstand] layoutID 1
execute if entity @a[scores={layoutID=0}] run function rematch:game/pvp/layoutid