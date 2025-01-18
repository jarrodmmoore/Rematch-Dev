execute if entity @s[nbt={SelectedItem:{id:"minecraft:blue_glazed_terracotta"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=30..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/slowness_trap
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 30
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:blue_glazed_terracotta[minecraft:custom_name='{"bold":true,"color":"dark_blue","text":"Slowness Trap"}',minecraft:item_name='{"extra":["Slowness Trap"],"text":"EMU"}',minecraft:custom_data={Tags:["deployonground","slowtrap"],emu_lock_name:'{"bold":true,"color":"dark_blue","text":"Slowness Trap"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Slowness Trap]","bold":true,"color":"dark_blue","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1