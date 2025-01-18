bossbar set minecraft:unreadyprogress color red
bossbar set minecraft:unreadyprogress style progress
execute if entity @e[scores={readyRequired=..1},name=Global] run bossbar set minecraft:unreadyprogress name ["",{"score":{"name":"@e[limit=1,name=Global]","objective":"readyRequired"},"color":"red","bold":true,"type":"score"},{"text":" player must un-ready to cancel the countdown.","color":"red","bold":true,"type":"text"}]
execute unless entity @e[scores={readyRequired=..1},name=Global] run bossbar set minecraft:unreadyprogress name ["",{"score":{"name":"@e[limit=1,name=Global]","objective":"readyRequired"},"color":"red","bold":true,"type":"score"},{"text":" players must un-ready to cancel the countdown.","color":"red","bold":true,"type":"text"}]
return 1