execute if entity @s[nbt={SelectedItem:{id:"minecraft:arrow"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=50..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/arrow
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 50
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:arrow[minecraft:custom_name='{"bold":true,"color":"dark_gray","text":"Arrow"}',minecraft:item_name='{"extra":["Arrow"],"text":"EMU"}',minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"dark_gray","text":"Arrow"}'}] 16
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Arrows] (x16)","bold":true,"color":"dark_gray","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1