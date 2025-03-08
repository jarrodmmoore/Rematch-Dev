function rematch:game/gather/reset_livestock
function rematch:game/gather/generate_livestock
title @a[team=players] title {"text":"","type":"text"}
title @a[team=players] subtitle ["",{"text":"\u26a0","color":"gold","type":"text"},{"text":" [Livestock]","color":"dark_green","type":"text"},{"text":" respawned! \u26a0","color":"gold","type":"text"}]
tellraw @a[team=players] ["",{"text":"[Livestock]","color":"dark_green","type":"text"},{"text":" respawned!","color":"gold","type":"text"}]
playsound minecraft:block.note_block.pling master @a[team=players] ~ ~ ~ 0.5 2