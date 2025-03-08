playsound minecraft:block.note_block.pling master @s ~ 100000 ~ 100000 2
item replace entity @s hotbar.0 with minecraft:sea_lantern[minecraft:custom_name='"Warp to the middle?"',minecraft:item_name='{"extra":["Warp to the middle?"],"text":"EMU"}',minecraft:lore=['"Press q to be teleported back to the village well!"'],minecraft:custom_data={emu_lock_name:'"Warp to the middle?"'}]
tp @s @e[sort=random,limit=1,name=gatherTP]
scoreboard players set @s inputCooldown 60

function rematch:text/gather_messages/warped_to_center