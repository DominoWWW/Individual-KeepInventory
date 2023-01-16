scoreboard objectives remove keepInventory
scoreboard objectives remove IKI.death
scoreboard objectives remove IKI.motionX
scoreboard objectives remove IKI.motionZ
scoreboard objectives remove IKI.xpA
scoreboard objectives remove IKI.xpB
scoreboard objectives remove IKI.xpPoints
scoreboard objectives remove IKI.xpMaths
tag @a remove IKI.keepInventoryOff
gamerule keepInventory false
tellraw @s [{"text":"Do you wish to have keepInventory ","color":"gray"},{"text":"[On]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"[Click]"}]},"clickEvent":{"action":"run_command","value":"/gamerule keepInventory true"}},{"text":" or ","color":"gray"},{"text":"[Off]","color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"[Click]"}]},"clickEvent":{"action":"run_command","value":"/gamerule keepInventory false"}}]
