gamerule keepInventory true
scoreboard objectives add keepInventory trigger
scoreboard objectives add IKI.death deathCount
scoreboard objectives add IKI.motionX dummy
scoreboard objectives add IKI.motionZ dummy
scoreboard objectives add IKI.xpA dummy
scoreboard objectives add IKI.xpB dummy
scoreboard objectives add IKI.xpPoints dummy
scoreboard objectives add IKI.xpMaths dummy

scoreboard players set IKI.-1 IKI.motionX -1
scoreboard players set IKI.-1 IKI.motionZ -1
execute unless score IKI.trigger keepInventory matches -2147483648..2147483647 run scoreboard players set IKI.trigger keepInventory 2
execute unless score IKI.dropXp keepInventory matches -2147483648..2147483647 run scoreboard players set IKI.dropXp keepInventory 0
function individual_keepinventory:tick