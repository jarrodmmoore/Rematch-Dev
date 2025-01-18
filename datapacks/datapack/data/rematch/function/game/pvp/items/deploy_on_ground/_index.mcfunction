#horses
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{Tags:["horse1"]}}}}] run function rematch:game/pvp/items/deploy_on_ground/horse
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{Tags:["horse2"]}}}}] run function rematch:game/pvp/items/deploy_on_ground/leaping_horse
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{Tags:["horse3"]}}}}] run function rematch:game/pvp/items/deploy_on_ground/speedy_horse

#charged creeper
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{Tags:["chargedcreeper"]}}}}] run function rematch:game/pvp/items/deploy_on_ground/charged_creeper

#potion effect traps
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{Tags:["slowtrap"]}}}}] run function rematch:game/pvp/items/deploy_on_ground/slowness_trap
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{Tags:["harmtrap"]}}}}] run function rematch:game/pvp/items/deploy_on_ground/harming_trap
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{Tags:["poisontrap"]}}}}] run function rematch:game/pvp/items/deploy_on_ground/poison_trap

#pocket tnt trap
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{Tags:["pockettnt"]}}}}] run function rematch:game/pvp/items/deploy_on_ground/pocket_tnt

#sink hole
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{Tags:["sinkhole"]}}}}] run function rematch:game/pvp/items/deploy_on_ground/sink_hole

#launch pad
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{Tags:["launchpad"]}}}}] run function rematch:game/pvp/items/deploy_on_ground/launch_pad

#bottle o axolotl
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{Tags:["axolotl"]}}}}] run function rematch:game/pvp/items/deploy_on_ground/bottle_axolotl

kill @s
return 1