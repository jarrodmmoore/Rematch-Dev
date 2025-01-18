execute if entity @s[nbt={SelectedItem:{id:"minecraft:beacon"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=125..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/instant_shield
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 125
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:beacon[minecraft:custom_name='{"bold":true,"color":"aqua","text":"Instant Shield"}',minecraft:item_name='{"extra":["Instant Shield"],"text":"EMU"}',minecraft:custom_data={Tags:["instantshield","droptouse"],emu_lock_name:'{"bold":true,"color":"aqua","text":"Instant Shield"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Instant Shield]","bold":true,"color":"aqua","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1