summon chest_minecart ~ ~ ~ {Tags:[IKI.carts, IKI.cart1]}
summon chest_minecart ~ ~ ~ {Tags:[IKI.carts, IKI.cart2]}
summon marker ~ ~ ~ {Tags:["IKI.pos"]}
item replace entity @n[tag=IKI.cart1] container.0 from entity @s hotbar.0
item replace entity @n[tag=IKI.cart1] container.1 from entity @s hotbar.1
item replace entity @n[tag=IKI.cart1] container.2 from entity @s hotbar.2
item replace entity @n[tag=IKI.cart1] container.3 from entity @s hotbar.3
item replace entity @n[tag=IKI.cart1] container.4 from entity @s hotbar.4
item replace entity @n[tag=IKI.cart1] container.5 from entity @s hotbar.5
item replace entity @n[tag=IKI.cart1] container.6 from entity @s hotbar.6
item replace entity @n[tag=IKI.cart1] container.7 from entity @s hotbar.7
item replace entity @n[tag=IKI.cart1] container.8 from entity @s hotbar.8

item replace entity @n[tag=IKI.cart1] container.9 from entity @s armor.head
item replace entity @n[tag=IKI.cart1] container.10 from entity @s armor.chest
item replace entity @n[tag=IKI.cart1] container.11 from entity @s armor.legs
item replace entity @n[tag=IKI.cart1] container.12 from entity @s armor.feet

item replace entity @n[tag=IKI.cart1] container.13 from entity @s weapon.offhand
item replace entity @n[tag=IKI.cart1] container.14 from entity @s player.cursor
item replace entity @n[tag=IKI.cart1] container.15 from entity @s player.crafting.0
item replace entity @n[tag=IKI.cart1] container.16 from entity @s player.crafting.1
item replace entity @n[tag=IKI.cart1] container.17 from entity @s player.crafting.2
item replace entity @n[tag=IKI.cart1] container.18 from entity @s player.crafting.3

item replace entity @n[tag=IKI.cart2] container.0 from entity @s inventory.0
item replace entity @n[tag=IKI.cart2] container.1 from entity @s inventory.1
item replace entity @n[tag=IKI.cart2] container.2 from entity @s inventory.2
item replace entity @n[tag=IKI.cart2] container.3 from entity @s inventory.3
item replace entity @n[tag=IKI.cart2] container.4 from entity @s inventory.4
item replace entity @n[tag=IKI.cart2] container.5 from entity @s inventory.5
item replace entity @n[tag=IKI.cart2] container.6 from entity @s inventory.6
item replace entity @n[tag=IKI.cart2] container.7 from entity @s inventory.7
item replace entity @n[tag=IKI.cart2] container.8 from entity @s inventory.8
item replace entity @n[tag=IKI.cart2] container.9 from entity @s inventory.9
item replace entity @n[tag=IKI.cart2] container.10 from entity @s inventory.10
item replace entity @n[tag=IKI.cart2] container.11 from entity @s inventory.11
item replace entity @n[tag=IKI.cart2] container.12 from entity @s inventory.12
item replace entity @n[tag=IKI.cart2] container.13 from entity @s inventory.13
item replace entity @n[tag=IKI.cart2] container.14 from entity @s inventory.14
item replace entity @n[tag=IKI.cart2] container.15 from entity @s inventory.15
item replace entity @n[tag=IKI.cart2] container.16 from entity @s inventory.16
item replace entity @n[tag=IKI.cart2] container.17 from entity @s inventory.17
item replace entity @n[tag=IKI.cart2] container.18 from entity @s inventory.18
item replace entity @n[tag=IKI.cart2] container.19 from entity @s inventory.19
item replace entity @n[tag=IKI.cart2] container.20 from entity @s inventory.20
item replace entity @n[tag=IKI.cart2] container.21 from entity @s inventory.21
item replace entity @n[tag=IKI.cart2] container.22 from entity @s inventory.22
item replace entity @n[tag=IKI.cart2] container.23 from entity @s inventory.23
item replace entity @n[tag=IKI.cart2] container.24 from entity @s inventory.24
item replace entity @n[tag=IKI.cart2] container.25 from entity @s inventory.25
item replace entity @n[tag=IKI.cart2] container.26 from entity @s inventory.26
clear @s
kill @e[type=chest_minecart, tag=IKI.carts]
tag @e[type=item,distance=..2] add IKI.item
execute as @e[tag=IKI.item] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]} 
execute as @e[tag=IKI.item] at @n[tag=IKI.pos] run tp @s ~ ~1.32 ~
kill @e[tag=IKI.pos]