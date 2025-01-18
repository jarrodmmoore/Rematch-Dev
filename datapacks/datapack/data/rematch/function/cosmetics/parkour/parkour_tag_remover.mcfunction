scoreboard players add @a[tag=Easy_Pk_Sign] Parkour_Tag_Time 1
scoreboard players add @a[tag=Medium_Pk_Sign] Parkour_Tag_Time 1
scoreboard players add @a[tag=Hard_Pk_Sign] Parkour_Tag_Time 1
tag @a[scores={Parkour_Tag_Time=3}] remove Easy_Pk_Sign
tag @a[scores={Parkour_Tag_Time=3}] remove Medium_Pk_Sign
tag @a[scores={Parkour_Tag_Time=3}] remove Hard_Pk_Sign
scoreboard players reset @a[scores={Parkour_Tag_Time=3}] Parkour_Tag_Time
return 1