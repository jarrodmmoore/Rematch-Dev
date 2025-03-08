execute if entity @e[tag=Ink] run function rematch:cosmetics/particles/ink
execute if entity @e[tag=Sneeze] run function rematch:cosmetics/particles/sneeze
execute if entity @e[tag=Flame] run function rematch:cosmetics/particles/flame
execute if entity @e[tag=Love] run function rematch:cosmetics/particles/love
execute if entity @e[tag=Raincloud] run function rematch:cosmetics/particles/raincloud
execute if entity @e[tag=Sweat] run function rematch:cosmetics/particles/sweat

execute if entity @e[tag=Party] run function rematch:cosmetics/particles/party
execute unless entity @e[tag=Party] run kill @e[type=minecraft:item,tag=Party_popper_item]

#execute if entity @a[tag=Spiral] run function rematch:cosmetics/particles/spiral
execute if entity @e[tag=Enchanted] run function rematch:cosmetics/particles/enchanted
execute if entity @e[tag=Rainbow] run function rematch:cosmetics/particles/rainbow
execute if entity @e[tag=Mystic] run function rematch:cosmetics/particles/mystic
execute if entity @e[tag=Angry_Cloud] run function rematch:cosmetics/particles/angry_cloud
function rematch:cosmetics/particles/pheonix
function rematch:cosmetics/particles/pheonix_display
execute if entity @e[tag=Snowstep] run function rematch:cosmetics/particles/snowstep
execute if entity @e[tag=Brewing] run function rematch:cosmetics/particles/brewing
execute if entity @e[tag=Green_Step] run function rematch:cosmetics/particles/green_step