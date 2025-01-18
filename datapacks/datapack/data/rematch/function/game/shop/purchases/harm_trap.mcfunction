execute if entity @s[nbt={SelectedItem:{id:"minecraft:red_glazed_terracotta"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=50..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/harm_trap
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 50
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:red_glazed_terracotta[minecraft:custom_name='{"bold":true,"color":"dark_red","text":"Harm Trap"}',minecraft:item_name='{"extra":["Harm Trap"],"text":"EMU"}',minecraft:custom_data={Tags:["deployonground","harmtrap"],emu_lock_name:'{"bold":true,"color":"dark_red","text":"Harm Trap"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Harm Trap]","bold":true,"color":"dark_red","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1