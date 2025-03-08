execute if entity @s[nbt={SelectedItem:{id:"minecraft:tipped_arrow",components:{"minecraft:potion_contents":{potion:"minecraft:awkward"}}}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=120..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/explosive_arrow
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 120
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:tipped_arrow[minecraft:potion_contents={custom_color:10557192,potion:"minecraft:awkward"},minecraft:custom_name='{"bold":true,"color":"dark_red","text":"Explosive Arrow"}',minecraft:item_name='{"extra":["Explosive Arrow"],"text":"EMU"}',minecraft:custom_data={explosiveArrow:1b,emu_lock_name:'{"bold":true,"color":"dark_red","text":"Explosive Arrow"}'}] 2
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Explosive Arrows] (x2)","bold":true,"color":"dark_red","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject