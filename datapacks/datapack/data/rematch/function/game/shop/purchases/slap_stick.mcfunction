execute if entity @s[nbt={SelectedItem:{id:"minecraft:bamboo"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=150..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/slap_stick
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 150
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:bamboo[minecraft:custom_name='{"bold":true,"color":"green","text":"Slap Stick"}',minecraft:item_name='{"extra":["Slap Stick"],"text":"EMU"}',minecraft:enchantments={levels:{"minecraft:knockback":5}},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"green","text":"Slap Stick"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Slap Stick]","bold":true,"color":"green","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject