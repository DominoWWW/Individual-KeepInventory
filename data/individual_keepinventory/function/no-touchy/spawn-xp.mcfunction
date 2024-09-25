execute at @s if score @s IKI.xpDrop matches 1..2 run summon experience_orb ~ ~ ~ {Tags:[IKI.xp],Value:1}
execute at @s if score @s IKI.xpDrop matches 3..6 run summon experience_orb ~ ~ ~ {Tags:[IKI.xp],Value:3}
execute at @s if score @s IKI.xpDrop matches 7..16 run summon experience_orb ~ ~ ~ {Tags:[IKI.xp],Value:7}
execute at @s if score @s IKI.xpDrop matches 17..36 run summon experience_orb ~ ~ ~ {Tags:[IKI.xp],Value:17}
execute at @s if score @s IKI.xpDrop matches 37..72 run summon experience_orb ~ ~ ~ {Tags:[IKI.xp],Value:37}
execute at @s if score @s IKI.xpDrop matches 73..100 run summon experience_orb ~ ~ ~ {Tags:[IKI.xp],Value:73}

execute at @s if score @s IKI.xpDrop matches 1..2 run scoreboard players remove @s IKI.xpDrop 1
execute at @s if score @s IKI.xpDrop matches 3..6 run scoreboard players remove @s IKI.xpDrop 3
execute at @s if score @s IKI.xpDrop matches 7..16 run scoreboard players remove @s IKI.xpDrop 7
execute at @s if score @s IKI.xpDrop matches 17..36 run scoreboard players remove @s IKI.xpDrop 17
execute at @s if score @s IKI.xpDrop matches 37..72 run scoreboard players remove @s IKI.xpDrop 37
execute at @s if score @s IKI.xpDrop matches 73..100 run scoreboard players remove @s IKI.xpDrop 73

execute store result storage iki:xp-motion x double 0.000000001 run random value -200000000..200000000
execute store result storage iki:xp-motion y double 0.000000001 run random value 0..400000000
execute store result storage iki:xp-motion z double 0.000000001 run random value -200000000..200000000

tag @n[type=experience_orb,tag=IKI.xp,distance=..1] add IKI.xpGaveMotion 

data modify entity @n[tag=IKI.xpGaveMotion,tag=IKI.xp] Motion[0] set from storage iki:xp-motion x 
data modify entity @n[tag=IKI.xpGaveMotion,tag=IKI.xp] Motion[1] set from storage iki:xp-motion y 
data modify entity @n[tag=IKI.xpGaveMotion,tag=IKI.xp] Motion[2] set from storage iki:xp-motion z 

tag @n[type=experience_orb,tag=IKI.xpGaveMotion,tag=IKI.xp,distance=..1] remove IKI.xp

execute at @s unless score @s IKI.xpDrop matches 0 run function individual_keepinventory:no-touchy/spawn-xp