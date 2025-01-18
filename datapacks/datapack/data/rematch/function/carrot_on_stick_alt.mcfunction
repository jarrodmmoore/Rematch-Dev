#make sure player has the item

tag @s remove invalidCarrot
tag @s remove hasCarrot
execute unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] run tag @s add invalidCarrot
tag @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b}]}] add hasCarrot

#execute if entity @s[tag=invalidCarrot] run clear @s minecraft:carrot_on_a_stick

#give carrot on stick if missing
execute if entity @s[tag=!hasCarrot] run clear @s minecraft:carrot_on_a_stick
execute if entity @s[tag=!hasCarrot,tag=!noInventory] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s[scores={hp=1..}] weapon.offhand with minecraft:carrot_on_a_stick[minecraft:custom_name='{"bold":true,"color":"light_purple","italic":false,"text":"Input Detector"}',minecraft:item_name='{"extra":["Input Detector"],"text":"EMU"}',minecraft:lore=['"This is used to detect right clicks!"'],minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"light_purple","italic":false,"text":"Input Detector"}'}] 1

#input cooldown
scoreboard players remove @s[scores={inputCooldown=1..}] inputCooldown 1
return 1