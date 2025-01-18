#vote/unvote 1
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVote1"]}}}}] add playerVote1
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVote1"]}}}}] remove playerVote2
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVote1"]}}}}] remove playerVote3
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVoted1"]}}}}] remove playerVote1
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVoted1"]}}}}] remove playerVote2
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVoted1"]}}}}] remove playerVote3

#vote/unvote 2
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVote2"]}}}}] remove playerVote1
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVote2"]}}}}] add playerVote2
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVote2"]}}}}] remove playerVote3
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVoted2"]}}}}] remove playerVote1
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVoted2"]}}}}] remove playerVote2
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVoted2"]}}}}] remove playerVote3

#vote/unvote 3
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVote3"]}}}}] remove playerVote1
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVote3"]}}}}] remove playerVote2
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVote3"]}}}}] add playerVote3
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVoted3"]}}}}] remove playerVote1
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVoted3"]}}}}] remove playerVote2
tag @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapVoted3"]}}}}] remove playerVote3

#vote sounds
execute if entity @s[tag=playerVote1,scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map"}}] run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1
execute if entity @s[tag=playerVote2,scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map"}}] run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1.25
execute if entity @s[tag=playerVote3,scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map"}}] run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1.5
execute if entity @s[tag=!playerVote1,tag=!playerVote2,tag=!playerVote3,scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map"}}] run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 .5

#replace inventory slot
clear @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapv1"]}}}}] minecraft:filled_map[minecraft:custom_data~{Tags:["mapv1"]}]
clear @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapv2"]}}}}] minecraft:filled_map[minecraft:custom_data~{Tags:["mapv2"]}]
clear @s[scores={carrotInput=1..},nbt={SelectedItem:{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapv3"]}}}}] minecraft:filled_map[minecraft:custom_data~{Tags:["mapv3"]}]

scoreboard players set @s inputCooldown 5
return 1