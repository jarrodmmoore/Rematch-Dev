execute if entity @s[nbt={SelectedItem:{id:"minecraft:green_glazed_terracotta"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=40..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/poison_trap
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 40
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:green_glazed_terracotta[minecraft:custom_name='{"bold":true,"color":"green","text":"Poison Trap"}',minecraft:item_name='{"extra":["Poison Trap"],"text":"EMU"}',minecraft:custom_data={Tags:["deployonground","poisontrap"],emu_lock_name:'{"bold":true,"color":"green","text":"Poison Trap"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Poison Trap]","bold":true,"color":"green","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1