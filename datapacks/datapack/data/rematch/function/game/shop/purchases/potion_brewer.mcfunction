execute if entity @s[nbt={SelectedItem:{id:"minecraft:brewing_stand"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=350..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/potion_brewer
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 350
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:brewing_stand[minecraft:custom_name='{"bold":true,"color":"dark_purple","text":"Potion Brewer"}',minecraft:item_name='{"extra":["Potion Brewer"],"text":"EMU"}',minecraft:lore=['{"color":"light_purple","text":"Keep in your inventory!"}'],minecraft:custom_data={Tags:["holdinventory"],emu_lock_name:'{"bold":true,"color":"dark_purple","text":"Potion Brewer"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Potion Brewer]","bold":true,"color":"dark_purple","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject