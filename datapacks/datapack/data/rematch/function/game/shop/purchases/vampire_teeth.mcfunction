execute if entity @s[nbt={SelectedItem:{id:"minecraft:ghast_tear"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=300..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/vampire_teeth
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 300
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:ghast_tear[minecraft:custom_name='{"bold":true,"color":"white","text":"Vampire\'s Teeth"}',minecraft:item_name='{"extra":["Vampire_SQ_s Teeth"],"text":"EMU"}',minecraft:lore=['{"color":"light_purple","text":"Keep in your inventory!"}'],minecraft:custom_data={Tags:["holdinventory"],emu_lock_name:'{"bold":true,"color":"white","text":"Vampire\'s Teeth"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Vampire's Teeth]","bold":true,"color":"white","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject