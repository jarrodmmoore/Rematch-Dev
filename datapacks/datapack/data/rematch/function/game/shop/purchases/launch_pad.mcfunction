execute if entity @s[nbt={SelectedItem:{id:"minecraft:slime_block"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=90..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/launch_pad
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 90
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:slime_block[minecraft:custom_name='{"bold":true,"color":"green","text":"Launch Pad"}',minecraft:item_name='{"extra":["Launch Pad"],"text":"EMU"}',minecraft:custom_data={Tags:["deployonground","launchpad"],emu_lock_name:'{"bold":true,"color":"green","text":"Launch Pad"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Launch Pad]","bold":true,"color":"green","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject