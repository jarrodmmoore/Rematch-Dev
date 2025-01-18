scoreboard players enable @a tut_yes
scoreboard players enable @a tut_no
scoreboard players enable @a tut_1
scoreboard players enable @a tut_2
scoreboard players enable @a tut_3
scoreboard players enable @a tut_4
scoreboard players enable @a tut_5

execute as @a[scores={tut_yes=1..}] run function rematch:text/tutorial/1_yes1
execute as @a[scores={tut_no=1..}] run function rematch:text/tutorial/1_no

execute as @a[scores={tut_1=1..}] run function rematch:text/tutorial/overview
execute as @a[scores={tut_2=1..}] run function rematch:text/tutorial/gathering
execute as @a[scores={tut_3=1..}] run function rematch:text/tutorial/shops
execute as @a[scores={tut_4=1..}] run function rematch:text/tutorial/arena
execute as @a[scores={tut_5=1..}] run function rematch:text/tutorial/other
return 1