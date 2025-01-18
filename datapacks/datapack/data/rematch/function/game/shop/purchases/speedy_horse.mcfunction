execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["horse3"]}}}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=300..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/speedy_horse
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 300
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_horse_armor[minecraft:custom_name='{"bold":true,"color":"aqua","text":"Speedy Horse"}',minecraft:item_name='{"extra":["Speedy Horse"],"text":"EMU"}',minecraft:dyed_color={rgb:8779775},minecraft:custom_data={Tags:["deployonground","horse3"],emu_lock_name:'{"bold":true,"color":"aqua","text":"Speedy Horse"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Speedy Horse]","bold":true,"color":"aqua","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1