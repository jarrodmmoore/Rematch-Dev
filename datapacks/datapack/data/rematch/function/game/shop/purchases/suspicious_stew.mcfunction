execute if entity @s[nbt={SelectedItem:{id:"minecraft:suspicious_stew"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=10..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/suspicious_stew
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 10
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:suspicious_stew[minecraft:custom_name='{"bold":true,"color":"dark_green","text":"Suspicious Stew"}',minecraft:item_name='{"extra":["Suspicious Stew"],"text":"EMU"}',minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"dark_green","text":"Suspicious Stew"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Suspicious Stew]","bold":true,"color":"dark_green","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1