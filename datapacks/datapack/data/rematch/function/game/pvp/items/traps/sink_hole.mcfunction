execute as @a[tag=target] unless entity @s[scores={sinkHole=1..}] run scoreboard players set @s sinkHole 1

#sink hole expires over time