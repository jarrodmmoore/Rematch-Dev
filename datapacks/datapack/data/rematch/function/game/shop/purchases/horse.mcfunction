execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["horse1"]}}}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=150..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/horse
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 150
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_horse_armor[minecraft:custom_name='{"bold":true,"color":"red","text":"Horse"}',minecraft:item_name='{"extra":["Horse"],"text":"EMU"}',minecraft:custom_data={Tags:["deployonground","horse1"],emu_lock_name:'{"bold":true,"color":"red","text":"Horse"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Horse]","bold":true,"color":"red","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1