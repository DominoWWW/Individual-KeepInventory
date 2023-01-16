scoreboard players add IKI.trigger keepInventory 1

execute if score IKI.trigger keepInventory matches 1 run title @s actionbar ["",{"text":"Players can toggle keepInventory:","color":"gold"},{"text":" [true]","color":"green"}]
execute at @s if score IKI.trigger keepInventory matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.7
execute as @a[tag=IKI.keepInventoryOff] if score IKI.trigger keepInventory matches 1 run scoreboard players set @s keepInventory 2
execute if score IKI.trigger keepInventory matches 1 run scoreboard players set IKI.trigger keepInventory 2

execute if score IKI.trigger keepInventory matches 3 run title @s actionbar ["",{"text":"Players can toggle keepInventory:","color":"gold"},{"text":" [false]","color":"red"}]
execute at @s if score IKI.trigger keepInventory matches 3.. run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 2
execute if score IKI.trigger keepInventory matches 3.. run scoreboard players set IKI.trigger keepInventory 0