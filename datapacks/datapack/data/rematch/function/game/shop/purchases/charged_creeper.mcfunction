execute if entity @s[nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=75..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/charged_creeper
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 75
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:creeper_spawn_egg[minecraft:custom_name='{"bold":true,"color":"green","text":"Charged Creeper"}',minecraft:item_name='{"extra":["Charged Creeper"],"text":"EMU"}',minecraft:custom_data={Tags:["deployonground","chargedcreeper"],emu_lock_name:'{"bold":true,"color":"green","text":"Charged Creeper"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Charged Creeper]","bold":true,"color":"green","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject