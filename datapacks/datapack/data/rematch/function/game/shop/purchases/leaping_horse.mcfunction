execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["horse2"]}}}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=250..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/leaping_horse
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 250
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_horse_armor[minecraft:custom_name='{"bold":true,"color":"green","text":"Leaping Horse"}',minecraft:item_name='{"extra":["Leaping Horse"],"text":"EMU"}',minecraft:dyed_color={rgb:6160215},minecraft:custom_data={Tags:["deployonground","horse2"],emu_lock_name:'{"bold":true,"color":"green","text":"Leaping Horse"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Leaping Horse]","bold":true,"color":"green","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject