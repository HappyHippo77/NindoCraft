scoreboard players add @s hh.scrollCurrent 1
execute if score @s hh.scrollCurrent > @s hh.scrollMax run scoreboard players set @s hh.scrollCurrent 1
execute if score @s hh.scrollCurrent matches ..0 run scoreboard players operation @s hh.scrollCurrent = @s hh.scrollMax
function hh.nindocraft:jutsu/scroll/nohandseals/name