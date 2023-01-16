execute as @a store result score @s IKI.xpA run data get entity @s XpLevel 1
execute as @a store result score @s IKI.xpB run data get entity @s XpLevel 6
execute as @a store result score @s IKI.xpPoints run experience query @s points
execute as @a run scoreboard players operation @s IKI.xpA *= @s IKI.xpA
execute as @a run scoreboard players operation @s IKI.xpA += @s IKI.xpB
execute as @a run scoreboard players operation @s IKI.xpA += @s IKI.xpPoints
execute as @a if score @s IKI.xpA matches 101.. run scoreboard players set @s IKI.xpA 100

execute if score IKI.trigger keepInventory matches 2 run scoreboard players enable @a keepInventory
execute if score IKI.trigger keepInventory matches 0 run scoreboard players reset @a keepInventory

execute as @a if score @s keepInventory matches ..-1 run scoreboard players set @s keepInventory 3 

execute as @a if score @s keepInventory matches 1 run title @s actionbar ["",{"text":"keepInventory:","color":"gold"},{"text":" [Off]","color":"red"}]
execute as @a at @s if score @s keepInventory matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.7
execute as @a if score @s keepInventory matches 1 run tag @s add IKI.keepInventoryOff
execute as @a if score @s keepInventory matches 1 run scoreboard players set @s keepInventory 2

execute as @a if score @s keepInventory matches 3 run title @s actionbar ["",{"text":"keepInventory:","color":"gold"},{"text":" [On]","color":"green"}]
execute as @a at @s if score @s keepInventory matches 3.. run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 2
execute as @a if score @s keepInventory matches 3.. run tag @s remove IKI.keepInventoryOff
execute as @a if score @s keepInventory matches 3.. run scoreboard players set @s keepInventory 0

execute as @a at @s if score @s IKI.death matches 1 if entity @s[tag=IKI.keepInventoryOff] run function individual_keepinventory:drop_items
execute as @a at @s if score @s IKI.death matches 1 if entity @s[tag=IKI.keepInventoryOff] unless score @s IKI.xpA matches 0 anchored eyes run summon experience_orb ^ ^ ^ {Value:0,Tags:["IKI.addValue"]}
execute as @a at @s if score @s IKI.death matches 1 if score IKI.dropXp keepInventory matches 2 if entity @s[tag=!IKI.keepInventoryOff] unless score @s IKI.xpA matches 0 anchored eyes run summon experience_orb ^ ^ ^ {Value:0,Tags:["IKI.addValue"]}
execute as @a at @s if score @s IKI.death matches 1 store result entity @e[tag=IKI.addValue,distance=..3,limit=1,sort=nearest] Value int 1 run scoreboard players get @s IKI.xpA
execute as @a at @s if score @s IKI.death matches 1 if score IKI.dropXp keepInventory matches 2 run experience set @s 0 levels 
execute as @a at @s if score @s IKI.death matches 1 if score IKI.dropXp keepInventory matches 2 run experience set @s 0 points
execute as @a at @s if score @s IKI.death matches 1 if entity @s[tag=IKI.keepInventoryOff] run experience set @s 0 levels 
execute as @a at @s if score @s IKI.death matches 1 if entity @s[tag=IKI.keepInventoryOff] run experience set @s 0 points 
tag @e[tag=IKI.addValue] remove IKI.addValue

execute as @a at @s if score @s IKI.death matches 1 if entity @s[tag=IKI.keepInventoryOff] run clear @s

execute as @a if score @s IKI.death matches 1.. run scoreboard players set @s IKI.death 0

schedule function individual_keepinventory:tick 1t