#================================
#ARMOR SETS
effect give @a[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["spyoutfit"]}},Slot:100b},{components:{"minecraft:custom_data":{Tags:["spyoutfit"]}},Slot:101b},{components:{"minecraft:custom_data":{Tags:["spyoutfit"]}},Slot:102b}]}] minecraft:speed 1 0 true
function help:d6d723687cf8b4f6b82e34dee85489ae1b989f0675e919a9c48c643ea72c3066
effect give @a[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["tankoutfit"]}},Slot:100b},{components:{"minecraft:custom_data":{Tags:["tankoutfit"]}},Slot:101b},{components:{"minecraft:custom_data":{Tags:["tankoutfit"]}},Slot:102b}]}] minecraft:resistance 1 1 true
effect give @a[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["tankoutfit"]}},Slot:100b},{components:{"minecraft:custom_data":{Tags:["tankoutfit"]}},Slot:101b},{components:{"minecraft:custom_data":{Tags:["tankoutfit"]}},Slot:102b}]}] minecraft:slowness 1 0 true
effect give @a[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["warrioroutfit"]}},Slot:100b},{components:{"minecraft:custom_data":{Tags:["warrioroutfit"]}},Slot:101b},{components:{"minecraft:custom_data":{Tags:["warrioroutfit"]}},Slot:102b}]}] minecraft:strength 1 0 true
execute as @a[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["angeloutfit"]}},Slot:100b},{components:{"minecraft:custom_data":{Tags:["angeloutfit"]}},Slot:101b},{components:{"minecraft:custom_data":{Tags:["angeloutfit"]}},Slot:102b}]}] run function rematch:game/pvp/items/angel_outfit
execute as @a[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["rainbowoutfit"]}},Slot:100b},{components:{"minecraft:custom_data":{Tags:["rainbowoutfit"]}},Slot:101b},{components:{"minecraft:custom_data":{Tags:["rainbowoutfit"]}},Slot:102b}]}] run function rematch:game/pvp/items/rainbow_outfit
execute as @a[scores={pigstep=1..}] unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["rainbowoutfit"]}},Slot:100b},{components:{"minecraft:custom_data":{Tags:["rainbowoutfit"]}},Slot:101b},{components:{"minecraft:custom_data":{Tags:["rainbowoutfit"]}},Slot:102b}]}] run stopsound @s
execute as @a[scores={pigstep=1..}] unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["rainbowoutfit"]}},Slot:100b},{components:{"minecraft:custom_data":{Tags:["rainbowoutfit"]}},Slot:101b},{components:{"minecraft:custom_data":{Tags:["rainbowoutfit"]}},Slot:102b}]}] run scoreboard players reset @s pigstep
#execute if entity @a[nbt={Inventory:[{Slot:100b,tag:{Tags:["angeloutfit"]}},{Slot:101b,tag:{Tags:["angeloutfit"]}},{Slot:102b,tag:{Tags:["angeloutfit"]}}]}] run stopsound @a master minecraft:item.armor.equip_leather

#================================
#PASSIVE ITEMS
#brewing stand
scoreboard players add @a[nbt={Inventory:[{id:"minecraft:brewing_stand"}]}] brewingTime 1
execute as @a[scores={brewingTime=600..}] at @s run function rematch:game/pvp/items/brew_potion

#vampire teeth
execute as @a[scores={hitPlayer=1..},nbt={Inventory:[{id:"minecraft:ghast_tear"}]}] run function rematch:game/pvp/items/vampire_healing_chance
#effect give @a[scores={hitPlayer=1..},nbt={Inventory:[{id:"minecraft:ghast_tear"}]}] minecraft:instant_health 1 0 true
scoreboard players reset @a[scores={hitPlayer=1..}] hitPlayer

#================================
#MISC
#rumblerod
execute as @a[gamemode=adventure,team=!spectators,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["rumblerod"]}}}}] at @s run function rematch:game/pvp/items/rumble_rod

#exploding arrows
execute as @e[type=minecraft:arrow,nbt={inGround:1b,item:{id:"minecraft:arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:awkward"}}}}] at @s run function rematch:game/pvp/items/exploding_arrow

#totem of undying
execute as @a[scores={use_totem=1..}] run effect clear @s minecraft:regeneration
execute as @a[scores={use_totem=1..}] run scoreboard players reset @s use_totem

#cookie
execute as @a[scores={eatCookie=1}] run scoreboard players set @s eatCookie2 0
execute as @a[scores={eatCookie2=0..}] run function rematch:game/pvp/items/cookie

#glow berries
execute as @a[scores={eatGlowberries=1..}] run function rematch:game/pvp/items/glowberries

#================================
#DROP ITEMS
#player swap
execute as @a[scores={dropClock=1..}] run function rematch:game/pvp/items/player_swap

#guided missile
execute as @a[scores={dropMissile=1..}] at @s run function rematch:game/pvp/items/launch_missile
execute as @e[tag=missile] at @s run function rematch:game/pvp/items/guided_missile_flight

#safety warp
execute as @a[scores={dropEmeraldBlock=1..}] at @s run function rematch:game/pvp/items/safety_warp

#fungus
execute as @a[scores={dropVines=1..}] at @s run function rematch:game/pvp/items/fungus

#safe shot
execute as @a[scores={dropFCoral=1..}] at @s run function rematch:game/pvp/items/safe_shot

#twister
execute as @a[scores={dropString=1..}] at @s run function rematch:game/pvp/items/twister

#radar
execute as @a[scores={dropRadar=1..}] at @s run function rematch:game/pvp/items/radar

#laser
execute as @a[scores={dropRedGlass=1..}] at @s run function rematch:game/pvp/items/shoot_laser
execute as @e[tag=laserbeam] at @s run function rematch:game/pvp/items/laser_go

#fireball
execute as @a[scores={dropFireball=1..}] at @s run function rematch:game/pvp/items/fireball
execute as @e[tag=fireball] at @s run function rematch:game/pvp/items/fireball_fly
scoreboard players add @e[type=minecraft:fireball] age 1
kill @e[type=minecraft:fireball,scores={age=120..}]

#lightning ring
execute as @a[scores={dropDiamond=1..}] at @s run function rematch:game/pvp/items/lightning_ring_activate

#instant shield
execute as @a[scores={dropShield=1..}] run function rematch:game/pvp/items/instant_shield

#================================
#DEPLOY ON GROUND
#make sure the item adopts a team and playerID
execute as @e[type=minecraft:item,tag=!itemHasID,nbt={Item:{components:{"minecraft:custom_data":{Tags:["deployonground"]}}}}] at @s run function rematch:game/pvp/items/deploy_on_ground/_get_id

#general (indexed)
execute as @e[type=minecraft:item,tag=itemHasID,nbt={OnGround:1b,Item:{components:{"minecraft:custom_data":{Tags:["deployonground"]}}}}] at @s run function rematch:game/pvp/items/deploy_on_ground/_index

#================================
#TRAPS
execute as @a[gamemode=adventure,team=!spectators,nbt={OnGround:1b}] at @s if entity @e[distance=..2,tag=phase3trap,tag=shortrange] at @s run function rematch:game/pvp/items/traps/_short_range
#execute as @a[team=!spectators,gamemode=adventure,nbt={OnGround:1b}] at @s if entity @e[tag=phase3trap,tag=longrange,distance=..3] at @s run function rematch:game/pvp/items/traps/_long_range

execute as @a[scores={sinkHole=1..}] at @s run function rematch:game/pvp/items/player_in_sinkhole
execute as @e[tag=phase3trap,tag=sinkhole] at @s run particle minecraft:falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~.2 ~ 3.0 0.0 3.0 1 5
execute as @e[tag=phase3trap,tag=sinkhole] at @s run particle minecraft:falling_dust{block_state:{Name:"minecraft:gravel"}} ~ ~.2 ~ 3.0 0.0 3.0 1 5
scoreboard players add @e[tag=phase3trap,tag=sinkhole] age 1
kill @e[tag=sinkhole,scores={age=400..}]

#================================
#OTHER
#generic electrocution effect
execute as @a[scores={electrocute=1..}] at @s run function rematch:game/pvp/items/electrocute

#generic burn effect
execute as @a[scores={burn=1..}] at @s run function rematch:game/pvp/items/burn

#lightning ring
execute as @a[gamemode=adventure,scores={lightningRing=1..}] at @s run function rematch:game/pvp/items/lightning_ring

#players get spun by twister
scoreboard players remove @a[scores={SPEEN=1..}] SPEEN 1
execute as @a[gamemode=adventure,scores={SPEEN=1..}] at @s run function rematch:game/pvp/items/spin

#get rid of unwanted item drops
clear @a minecraft:glass_bottle
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{Tags:["droptouse"]}}}}]
clear @a minecraft:bowl

#add colors for visible traps teams
execute if entity @e[tag=phase3trap,tag=launchpad,tag=reditem] at @e[tag=phase3trap,tag=launchpad,tag=reditem] run particle minecraft:dust{color:[1.0f,0.0f,0.0f],scale:1.0f} ~ ~2 ~ 0.05 0 0.05 1 1 normal @a
execute if entity @e[tag=phase3trap,tag=launchpad,tag=blueitem] at @e[tag=phase3trap,tag=launchpad,tag=blueitem] run particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:1.0f} ~ ~2 ~ 0.05 0 0.05 1 1 normal @a

#bottle of axolotl
execute as @e[tag=effectaxolotl] at @s run function rematch:game/pvp/items/axolotl_loop

#assign ID's to all dropped items
execute if entity @e[type=minecraft:item,tag=!given_id] as @a at @s if entity @e[type=minecraft:item,distance=..5,tag=!given_id] run function rematch:game/pvp/items/id_items

#don't let players drop their items!
execute as @e[type=minecraft:item] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{Tags:["deployonground"]}}}}] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{Tags:["droptouse"]}}}}] at @s if entity @a[gamemode=adventure,distance=..2] run data merge entity @s[type=minecraft:item] {PickupDelay:0}
return 1