execute if entity @s[nbt={SelectedItem:{id:"minecraft:spectral_arrow"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=25..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/spectral_arrow
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 25
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:spectral_arrow[minecraft:custom_name='{"bold":true,"color":"yellow","text":"Spectral Arrow"}',minecraft:item_name='{"extra":["Spectral Arrow"],"text":"EMU"}',minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"yellow","text":"Spectral Arrow"}'}] 4
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Spectral Arrows] (x4)","bold":true,"color":"yellow","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1