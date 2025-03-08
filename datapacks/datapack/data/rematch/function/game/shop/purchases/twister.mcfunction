execute if entity @s[nbt={SelectedItem:{id:"minecraft:string"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=300..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/twister
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 300
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:string[minecraft:custom_name='{"bold":true,"color":"white","text":"Twister"}',minecraft:item_name='{"extra":["Twister"],"text":"EMU"}',minecraft:custom_data={Tags:["droptouse"],emu_lock_name:'{"bold":true,"color":"white","text":"Twister"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Twister]","bold":true,"color":"white","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject