scoreboard players set @s IKI.death 0
scoreboard players operation @s IKI.xpDrop = @s IKI.xpCalc
function individual_keepinventory:no-touchy/spawn-xp
experience set @s 0 levels
experience set @s 0 points