execute if entity @s[nbt={SelectedItem:{id:"minecraft:splash_potion",components:{"minecraft:potion_contents":{potion:"minecraft:slowness"}}}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=30..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/slowness_potion
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 30
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:splash_potion[minecraft:custom_name='{"bold":true,"color":"dark_gray","text":"Slowness I Potion"}',minecraft:item_name='{"extra":["Slowness I Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:slowness"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"dark_gray","text":"Slowness I Potion"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Slowness I Potion]","bold":true,"color":"dark_gray","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject