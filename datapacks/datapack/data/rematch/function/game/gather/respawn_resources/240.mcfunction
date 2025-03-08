function rematch:game/gather/reset_livestock
function rematch:game/gather/generate_livestock
function rematch:game/gather/reset_monsters
function rematch:game/gather/generate_monsters
title @a[team=players] title {"text":"","type":"text"}
title @a[team=players] subtitle ["",{"text":"\u26a0","color":"gold","type":"text"},{"text":" [Livestock]","color":"dark_green","type":"text"},{"text":" and","color":"gold","type":"text"},{"text":" [Monsters]","color":"dark_purple","type":"text"},{"text":" respawned! \u26a0","color":"gold","type":"text"}]
tellraw @a[team=players] ["",{"text":"[Livestock]","color":"dark_green","type":"text"},{"text":" and","color":"gold","type":"text"},{"text":" [Monsters]","color":"dark_purple","type":"text"},{"text":" respawned!","color":"gold","type":"text"}]