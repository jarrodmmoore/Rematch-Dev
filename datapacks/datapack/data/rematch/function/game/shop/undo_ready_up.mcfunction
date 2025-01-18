playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0
scoreboard players reset @s readyShop
tellraw @s {"text":"\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592\u2592","bold":true,"type":"text"}
tellraw @s ["",{"text":"\n\n","type":"text"},{"text":"[Undo]","bold":true,"color":"dark_red","type":"text"},{"text":" successful.","italic":true,"color":"white","type":"text"},{"text":"\n","type":"text"},{"text":"Click","italic":true,"color":"white","type":"text"},{"text":" ","italic":true,"type":"text"},{"text":"[here]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function rematch:game/shop/ready_up"},"hoverEvent":{"action":"show_text","contents":{"text":"Click here!","italic":true,"color":"dark_purple","type":"text"}},"type":"text"},{"text":" to ready up.","italic":true,"color":"white","type":"text"}]

return 1