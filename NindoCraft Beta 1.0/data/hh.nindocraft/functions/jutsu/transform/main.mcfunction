execute if score @e[tag=hh.transformmob,sort=nearest,limit=1] du_uuid = @s du_uuid run tp @e[tag=hh.transformmob,sort=nearest,limit=1] @s
execute unless entity @e[tag=hh.transformmob,distance=..3] run function hh.nindocraft:jutsu/transform/release
effect give @s invisibility 1 0 true