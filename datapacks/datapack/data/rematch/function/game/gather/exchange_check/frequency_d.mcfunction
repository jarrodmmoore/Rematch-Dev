execute as @e[nbt={Inventory:[{id:"minecraft:rotten_flesh"}]}] run function rematch:game/gather/exchanges/rotten_flesh
execute as @e[nbt={Inventory:[{id:"minecraft:stick"}]}] run function rematch:game/gather/exchanges/stick
execute as @e[nbt={Inventory:[{id:"minecraft:string"}]}] run function rematch:game/gather/exchanges/string
execute as @e[nbt={Inventory:[{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}]}] run function rematch:game/gather/exchanges/water_bottle
execute as @e[nbt={Inventory:[{id:"minecraft:bone"}]}] run function rematch:game/gather/exchanges/bone
execute as @e[nbt={Inventory:[{id:"minecraft:ink_sac"}]}] run function rematch:game/gather/exchanges/ink_sac
execute as @e[nbt={Inventory:[{id:"minecraft:tripwire_hook"}]}] run function rematch:game/gather/exchanges/tripwire_hook
execute as @e[nbt={Inventory:[{id:"minecraft:leather"}]}] run function rematch:game/gather/exchanges/leather
execute as @e[nbt={Inventory:[{id:"minecraft:name_tag"}]}] run function rematch:game/gather/exchanges/name_tag
execute as @e[nbt={Inventory:[{id:"minecraft:nautilus_shell"}]}] run function rematch:game/gather/exchanges/nautilus_shell
execute as @e[nbt={Inventory:[{id:"minecraft:saddle"}]}] run function rematch:game/gather/exchanges/saddle
execute as @e[nbt={Inventory:[{id:"minecraft:lily_pad"}]}] run function rematch:game/gather/exchanges/lily_pad
execute as @e[nbt={Inventory:[{id:"minecraft:cod"}]}] run function rematch:game/gather/exchanges/cod
execute as @e[nbt={Inventory:[{id:"minecraft:salmon"}]}] run function rematch:game/gather/exchanges/salmon
execute as @e[nbt={Inventory:[{id:"minecraft:pufferfish"}]}] run function rematch:game/gather/exchanges/pufferfish
execute as @e[nbt={Inventory:[{id:"minecraft:tropical_fish"}]}] run function rematch:game/gather/exchanges/tropical_fish
execute as @e[nbt={Inventory:[{id:"minecraft:bow"}]}] run function rematch:game/gather/exchanges/bow
execute as @e[nbt={Inventory:[{id:"minecraft:enchanted_book"}]}] run function rematch:game/gather/exchanges/enchanted_book
execute as @e[nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:1b}]}] run function rematch:game/gather/exchanges/fishing_rod
execute as @e[nbt={Inventory:[{id:"minecraft:leather_boots"}]}] run function rematch:game/gather/exchanges/leather_boots


execute as @e[nbt={Inventory:[{id:"minecraft:player_head",components:{"minecraft:custom_name":'"Purple Bee"',"minecraft:item_name":'{"extra":["Purple Bee"],"text":"EMU"}',"minecraft:custom_data":{emu_lock_name:'"Purple Bee"'}}}]}] run function rematch:game/gather/exchanges/purple_bee

execute if entity @e[type=minecraft:pig,nbt={Saddle:1b}] run tag @a add pig_presence
execute if entity @e[type=minecraft:chicken,tag=baby_chicken] run tag @a add chicken_presence
execute if entity @e[type=minecraft:rabbit,nbt={RabbitType:99}] run tag @a add bunny_presence
execute if entity @e[type=minecraft:sheep,nbt={potion_contents:{custom_color:6}}] run tag @a add sheep_presence