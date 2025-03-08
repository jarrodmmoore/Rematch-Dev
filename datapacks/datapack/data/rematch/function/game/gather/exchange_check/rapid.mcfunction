execute as @e[scores={mine_wheat=1..}] run function rematch:game/gather/exchanges/wheat
execute as @e[scores={mine_potatoes=1..}] run function rematch:game/gather/exchanges/potatoes
execute as @e[scores={mine_carrots=1..}] run function rematch:game/gather/exchanges/carrots
execute as @e[scores={mine_beetroot=1..}] run function rematch:game/gather/exchanges/beetroot
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:fishing_rod",components:{"minecraft:custom_name":'"Trusty Rod"',"minecraft:item_name":'{"extra":["Trusty Rod"],"text":"EMU"}',"minecraft:custom_data":{emu_lock_name:'"Trusty Rod"'}}}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bowl"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_boots"}}]