#When the player dies, they drop experience orbs worth 7 * current level experience points, up to a maximum of 100 points
execute as @a store result score @s IKI.xpCalc run data get entity @s XpLevel 7
execute as @a if score @s IKI.xpCalc matches 101.. run scoreboard players set @s IKI.xpCalc 100
