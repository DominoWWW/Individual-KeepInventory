execute store result storage iki:item-motion x double 0.000000001 run random value -500000000..500000000
execute store result storage iki:item-motion y double 0.000000001 run random value 0..200000000
execute store result storage iki:item-motion z double 0.000000001 run random value -500000000..500000000

tag @n[type=item,tag=IKI.item] add IKI.itemGaveMotion 

data modify entity @n[tag=IKI.itemGaveMotion,tag=IKI.item] Motion[0] set from storage iki:item-motion x 
data modify entity @n[tag=IKI.itemGaveMotion,tag=IKI.item] Motion[1] set from storage iki:item-motion y 
data modify entity @n[tag=IKI.itemGaveMotion,tag=IKI.item] Motion[2] set from storage iki:item-motion z 

tag @n[type=item,tag=IKI.itemGaveMotion,tag=IKI.item] remove IKI.item

execute at @s if entity @e[tag=IKI.item] run function individual_keepinventory:no-touchy/spead-items