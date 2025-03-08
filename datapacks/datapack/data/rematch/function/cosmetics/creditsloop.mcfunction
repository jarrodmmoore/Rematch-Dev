execute as @e[tag=JayjoStick] at @s run particle minecraft:mycelium ~0.3 ~0.9 ~-0.5 0.3 0.1 0.3 0.5 1 normal @a
execute as @e[tag=Jayjo_] at @s run particle minecraft:mycelium ~-0.1 ~0.7 ~-0.5 0 0 0 0 1 normal @a

execute as @e[tag=FilmsCraft1] at @s run rotate @s ~-4 ~
execute as @e[tag=FilmsChest1] at @s run rotate @s ~5 ~
execute as @e[tag=FilmsCraft1] at @s run particle minecraft:mycelium ~ ~0.6 ~ 0.1 0.1 0.1 0 5 normal @a
execute as @e[tag=FilmsChest1] at @s run particle minecraft:mycelium ~ ~0.6 ~ 0.1 0.1 0.1 0 5 normal @a

scoreboard players add @e[tag=Jayjo_] FilmsWave 1
data merge entity @e[tag=Jayjo_,scores={FilmsWave=1},limit=1] {Pose:{RightArm:[-90.0f,75.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=2},limit=1] {Pose:{RightArm:[-89.0f,76.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=3},limit=1] {Pose:{RightArm:[-88.0f,78.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=4},limit=1] {Pose:{RightArm:[-86.0f,78.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=5},limit=1] {Pose:{RightArm:[-87.0f,79.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=6},limit=1] {Pose:{RightArm:[-87.0f,79.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=7},limit=1] {Pose:{RightArm:[-88.0f,80.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=8},limit=1] {Pose:{RightArm:[-90.0f,79.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=9},limit=1] {Pose:{RightArm:[-92.0f,77.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=10},limit=1] {Pose:{RightArm:[-94.0f,76.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=11},limit=1] {Pose:{RightArm:[-95.0f,75.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=12},limit=1] {Pose:{RightArm:[-95.0f,74.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=13},limit=1] {Pose:{RightArm:[-95.0f,74.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=14},limit=1] {Pose:{RightArm:[-94.0f,75.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=15},limit=1] {Pose:{RightArm:[-92.0f,76.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=16},limit=1] {Pose:{RightArm:[-90.0f,77.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=17},limit=1] {Pose:{RightArm:[-89.0f,78.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=18},limit=1] {Pose:{RightArm:[-90.0f,77.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=19},limit=1] {Pose:{RightArm:[-90.0f,76.0f,0.0f]}}
data merge entity @e[tag=Jayjo_,scores={FilmsWave=20},limit=1] {Pose:{RightArm:[-90.0f,75.0f,0.0f]}}
scoreboard players set @e[tag=Jayjo_,scores={FilmsWave=20}] FilmsWave 0


scoreboard players add @e[tag=MCFilms] FilmsWave 1
execute as @e[tag=MCFilms,scores={FilmsWave=1}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,0.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=2}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-5.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=3}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-10.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=4}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-15.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=5}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-20.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=6}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-25.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=7}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-30.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=8}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-35.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=9}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-40.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=10}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-45.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=11}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-45.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=12}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-40.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=13}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-35.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=14}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-30.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=15}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-25.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=16}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-20.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=17}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-15.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=18}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-10.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=19}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,-5.0f]}}
execute as @e[tag=MCFilms,scores={FilmsWave=20}] run data merge entity @e[tag=MCFilms,limit=1] {Pose:{RightArm:[-150.0f,20.0f,0.0f]}}
scoreboard players set @e[tag=MCFilms,scores={FilmsWave=20}] FilmsWave 0

scoreboard players add @e[tag=FlamingosaurusHorse] FilmsWave 1
data merge entity @e[tag=FlamingosaurusHorse,limit=1] {Age:-25000}
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=1}] at @s run rotate @s ~ ~-1
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=2}] at @s run rotate @s ~ ~-1
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=3}] at @s run rotate @s ~ ~-1
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=4}] at @s run rotate @s ~ ~-2
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=5}] at @s run rotate @s ~ ~-2
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=6}] at @s run rotate @s ~ ~-2
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=7}] at @s run rotate @s ~ ~-2
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=8}] at @s run rotate @s ~ ~-2
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=9}] at @s run rotate @s ~ ~-1
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=10}] at @s run rotate @s ~ ~-1
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=11}] at @s run rotate @s ~ ~-1
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=12}] at @s run rotate @s ~ ~
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=13}] at @s run rotate @s ~ ~
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=14}] at @s run rotate @s ~ ~
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=15}] at @s run rotate @s ~ ~1
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=16}] at @s run rotate @s ~ ~1
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=17}] at @s run rotate @s ~ ~1
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=18}] at @s run rotate @s ~ ~2
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=19}] at @s run rotate @s ~ ~2
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=20}] at @s run rotate @s ~ ~2
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=21}] at @s run rotate @s ~ ~2
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=22}] at @s run rotate @s ~ ~2
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=23}] at @s run rotate @s ~ ~1
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=24}] at @s run rotate @s ~ ~1
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=25}] at @s run rotate @s ~ ~1
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=26}] at @s run rotate @s ~ ~
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=27}] at @s run rotate @s ~ ~
execute as @e[tag=FlamingosaurusHorse,scores={FilmsWave=28}] at @s run rotate @s ~ ~
scoreboard players set @e[tag=FlamingosaurusHorse,scores={FilmsWave=28}] FilmsWave 0

scoreboard players add @e[tag=Flamingosaurus] FilmsWave 1
data merge entity @e[tag=Flamingosaurus,scores={FilmsWave=1},limit=1] {Pose:{LeftArm:[205.0f,0.0f,40.0f]}}
data merge entity @e[tag=Flamingosaurus,scores={FilmsWave=2},limit=1] {Pose:{LeftArm:[203.51f,0.0f,46.508f]}}
data merge entity @e[tag=Flamingosaurus,scores={FilmsWave=3},limit=1] {Pose:{LeftArm:[199.35f,0.0f,51.727f]}}
data merge entity @e[tag=Flamingosaurus,scores={FilmsWave=4},limit=1] {Pose:{LeftArm:[193.34f,0.0f,54.624f]}}
data merge entity @e[tag=Flamingosaurus,scores={FilmsWave=5},limit=1] {Pose:{LeftArm:[186.66f,0.0f,54.624f]}}
data merge entity @e[tag=Flamingosaurus,scores={FilmsWave=6},limit=1] {Pose:{LeftArm:[180.65f,0.0f,51.727f]}}
data merge entity @e[tag=Flamingosaurus,scores={FilmsWave=7},limit=1] {Pose:{LeftArm:[176.49f,0.0f,46.508f]}}
data merge entity @e[tag=Flamingosaurus,scores={FilmsWave=8},limit=1] {Pose:{LeftArm:[175.0f,0.0f,40.0f]}}
data merge entity @e[tag=Flamingosaurus,scores={FilmsWave=9},limit=1] {Pose:{LeftArm:[176.49f,0.0f,33.492f]}}
data merge entity @e[tag=Flamingosaurus,scores={FilmsWave=10},limit=1] {Pose:{LeftArm:[180.65f,0.0f,28.273f]}}
data merge entity @e[tag=Flamingosaurus,scores={FilmsWave=11},limit=1] {Pose:{LeftArm:[186.66f,0.0f,25.376f]}}
data merge entity @e[tag=Flamingosaurus,scores={FilmsWave=12},limit=1] {Pose:{LeftArm:[193.34f,0.0f,25.376f]}}
data merge entity @e[tag=Flamingosaurus,scores={FilmsWave=13},limit=1] {Pose:{LeftArm:[199.35f,0.0f,28.273f]}}
data merge entity @e[tag=Flamingosaurus,scores={FilmsWave=14},limit=1] {Pose:{LeftArm:[203.51f,0.0f,33.492f]}}
scoreboard players set @e[tag=Flamingosaurus,scores={FilmsWave=14}] FilmsWave 0

scoreboard players add @e[tag=Falcinspire] FilmsWave 1
data merge entity @e[tag=Falcinspire,scores={FilmsWave=1},limit=1] {CustomName:'"z    z    "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=2},limit=1] {CustomName:'"z    z    "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=3},limit=1] {CustomName:'"z    z    "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=4},limit=1] {CustomName:'"z    z    "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=5},limit=1] {CustomName:'"z    z    "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=6},limit=1] {CustomName:'" z    z   "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=7},limit=1] {CustomName:'" z    z   "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=8},limit=1] {CustomName:'" z    z   "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=9},limit=1] {CustomName:'" z    z   "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=10},limit=1] {CustomName:'" z    z   "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=11},limit=1] {CustomName:'"  z    z  "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=12},limit=1] {CustomName:'"  z    z  "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=13},limit=1] {CustomName:'"  z    z  "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=14},limit=1] {CustomName:'"  z    z  "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=15},limit=1] {CustomName:'"  z    z  "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=16},limit=1] {CustomName:'"   z    z "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=17},limit=1] {CustomName:'"   z    z "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=18},limit=1] {CustomName:'"   z    z "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=19},limit=1] {CustomName:'"   z    z "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=20},limit=1] {CustomName:'"   z    z "'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=21},limit=1] {CustomName:'"    z    z"'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=22},limit=1] {CustomName:'"    z    z"'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=23},limit=1] {CustomName:'"    z    z"'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=24},limit=1] {CustomName:'"    z    z"'}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=25},limit=1] {CustomName:'"    z    z"'}

data merge entity @e[tag=Falcinspire,scores={FilmsWave=1},limit=1] {Pose:{Head:[60.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=2},limit=1] {Pose:{Head:[60.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=3},limit=1] {Pose:{Head:[61.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=4},limit=1] {Pose:{Head:[62.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=5},limit=1] {Pose:{Head:[63.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=6},limit=1] {Pose:{Head:[65.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=7},limit=1] {Pose:{Head:[67.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=8},limit=1] {Pose:{Head:[69.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=9},limit=1] {Pose:{Head:[70.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=10},limit=1] {Pose:{Head:[71.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=11},limit=1] {Pose:{Head:[72.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=12},limit=1] {Pose:{Head:[72.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=13},limit=1] {Pose:{Head:[72.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=14},limit=1] {Pose:{Head:[71.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=15},limit=1] {Pose:{Head:[70.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=16},limit=1] {Pose:{Head:[69.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=17},limit=1] {Pose:{Head:[68.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=18},limit=1] {Pose:{Head:[66.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=19},limit=1] {Pose:{Head:[64.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=20},limit=1] {Pose:{Head:[62.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=21},limit=1] {Pose:{Head:[61.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=22},limit=1] {Pose:{Head:[60.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=23},limit=1] {Pose:{Head:[59.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=24},limit=1] {Pose:{Head:[59.0f,357.0f,20.0f]}}
data merge entity @e[tag=Falcinspire,scores={FilmsWave=25},limit=1] {Pose:{Head:[59.0f,357.0f,20.0f]}}
scoreboard players set @e[tag=Falcinspire,scores={FilmsWave=25}] FilmsWave 0

execute as @e[tag=test_credit] at @s run particle minecraft:enchant ~ ~2 ~ 0.125 0.15 0.125 0 1 normal @a