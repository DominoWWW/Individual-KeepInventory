#When the player dies, they drop experience orbs worth 7 * current level experience points, up to a maximum of 100 points
execute as @a store result score @s IKI.xpPoints run data get entity @s XpTotal
execute as @a store result score @s IKI.xpDrop run data get entity @s XpLevel 7
execute as @a if score @s IKI.xpDrop matches 101.. run scoreboard players set @s IKI.xpDrop 100


#execute as @a store result score @s IKI.xpPoints run experience query @s points
#execute as @a store result score @s IKI.xpA run data get entity @s XpLevel 1
#execute as @a store result score @s IKI.xpB run data get entity @s XpLevel 6
#execute as @a run scoreboard players operation @s IKI.xpA *= @s IKI.xpA
#execute as @a run scoreboard players operation @s IKI.xpA += @s IKI.xpB
#execute as @a run scoreboard players operation @s IKI.xpA += @s IKI.xpPoints
#execute as @a if score @s IKI.xpA matches 101.. run scoreboard players set @s IKI.xpA 100