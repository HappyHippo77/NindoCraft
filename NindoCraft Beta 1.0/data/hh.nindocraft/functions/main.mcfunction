# Special thanks to: garlicbreathinator:https://www.planetminecraft.com/member/garlicbreathinator/, ShelLuser:https://www.planetminecraft.com/member/shelluser/, SUPERIONtheKnight:https://www.planetminecraft.com/member/superiontheknight/
# Credit to: BlockBench 3D Model Creator:https://blockbench.net/, Datapack Utilities:https://github.com/ImCoolYeah105/Datapack-Utilities/wiki

# Bugfixes for DU
scoreboard players add @a[scores={du_uuid=1}] du_uuid 1

# Item Count (Continues at bottom of script)
execute as @e[type=item] store result score @s hh.itemCount run data get entity @s Item.Count 1

# Clock_Drop
execute if entity @a[scores={hh.dropClock=1}] as @a[scores={hh.dropClock=1}] run tag @s add hh.reset_clock
execute at @a[tag=hh.reset_clock] as @e[type=minecraft:item,tag=!hh.orig,distance=..4,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{NindoCraftID:1}}}] run tag @s add hh.orig
execute at @a[tag=hh.reset_clock] as @e[type=minecraft:item,tag=!hh.orig,distance=..4,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{NindoCraftID:2}}}] run tag @s add hh.orig
#    Shuriken
execute at @e[type=minecraft:item,tag=hh.orig,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{NindoCraftID:1}}}] run tag @p add hh.shurikenthrown

execute as @a[tag=hh.shurikenthrown] at @s run function hh.nindocraft:ninjatools/shuriken/throw
execute as @e[tag=hh.shuriken] at @s run function hh.nindocraft:ninjatools/shuriken/main

#	Jutsu Scroll
execute at @e[type=minecraft:item,tag=hh.orig,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{NindoCraftID:2}}}] run execute as @p at @s if entity @s[tag=hh.chakraenabled] run tellraw @p {"text":"Chakra Charging Disabled!","bold":true,"color":"red"}
execute at @e[type=minecraft:item,tag=hh.orig,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{NindoCraftID:2}}}] run execute as @p at @s if entity @s[tag=hh.chakraenabled] run playsound minecraft:entity.generic.extinguish_fire ambient @p ~ ~ ~ 1 1
execute at @e[type=minecraft:item,tag=hh.orig,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{NindoCraftID:2}}}] run execute as @p at @s if entity @s[tag=hh.chakraenabled] run scoreboard players set @p hh.ccboolean 1
execute at @e[type=minecraft:item,tag=hh.orig,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{NindoCraftID:2}}}] run execute as @p at @s if entity @s[tag=hh.chakraenabled] run tag @p remove hh.chakraenabled

execute at @e[type=minecraft:item,tag=hh.orig,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{NindoCraftID:2}}}] unless score @p hh.ccboolean matches 1 run execute as @p at @s if entity @s[tag=!hh.chakraenabled] run tellraw @p {"text":"Chakra Charging Enabled!","bold":true,"color":"dark_green"}
execute at @e[type=minecraft:item,tag=hh.orig,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{NindoCraftID:2}}}] unless score @p hh.ccboolean matches 1 run execute as @p at @s if entity @s[tag=!hh.chakraenabled] run playsound minecraft:entity.experience_orb.pickup ambient @p ~ ~ ~ 1 1
execute at @e[type=minecraft:item,tag=hh.orig,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{NindoCraftID:2}}}] unless score @p hh.ccboolean matches 1 run execute as @p at @s if entity @s[tag=!hh.chakraenabled] run tag @p add hh.chakraenabled

execute at @e[type=minecraft:item,tag=hh.orig,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{NindoCraftID:2}}}] if data entity @p SelectedItem run give @p minecraft:clock{du_click_detect:5b,NindoCraftID:2,CustomModelData:7700004,display:{Name:"{\"text\":\"Jutsu Scroll\"}",Lore:["\"The core of ninjutsu!\""]}} 1
execute at @e[type=minecraft:item,tag=hh.orig,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{NindoCraftID:2}}}] unless data entity @p SelectedItem run replaceitem entity @p weapon.mainhand minecraft:clock{du_click_detect:5b,NindoCraftID:2,CustomModelData:7700004,display:{Name:"{\"text\":\"Jutsu Scroll\"}",Lore:["\"The core of ninjutsu!\""]}} 1
execute at @e[type=minecraft:item,tag=hh.orig,nbt={Item:{id:"minecraft:clock",Count:1b,tag:{NindoCraftID:2}}}] run scoreboard players set @p hh.ccboolean 0

execute at @a[tag=hh.reset_clock] run kill @e[tag=hh.orig,distance=..5]
scoreboard players reset @a[tag=hh.reset_clock] hh.dropClock
tag @a[tag=hh.reset_clock] remove hh.reset_clock

# CraftingTable
execute as @e[type=item,nbt={Item:{id:"minecraft:dispenser",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:paper",Count:1b}},distance=..1] at @s run function hh.nindocraft:craftingtable/craft
execute as @e[tag=hh.narutoCrafter] at @s run function hh.nindocraft:craftingtable/main

# Hats
execute as @a[tag=du_right_click,nbt={SelectedItem:{id:"minecraft:clock",tag:{NindoCraftID:3}}}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] at @s run function hh.nindocraft:headbands/konoha
execute as @a[tag=du_right_click,nbt={SelectedItem:{id:"minecraft:clock",tag:{NindoCraftID:4}}}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] at @s run function hh.nindocraft:headbands/suna
execute as @a[tag=du_right_click,nbt={SelectedItem:{id:"minecraft:clock",tag:{NindoCraftID:5}}}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] at @s run function hh.nindocraft:headbands/kiri
execute as @a[tag=du_right_click,nbt={SelectedItem:{id:"minecraft:clock",tag:{NindoCraftID:6}}}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] at @s run function hh.nindocraft:headbands/oto
execute as @a[tag=du_right_click,nbt={SelectedItem:{id:"minecraft:clock",tag:{NindoCraftID:7}}}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] at @s run function hh.nindocraft:headbands/taki
execute as @a[tag=du_right_click,nbt={SelectedItem:{id:"minecraft:clock",tag:{NindoCraftID:8}}}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] at @s run function hh.nindocraft:headbands/iwa
execute as @a[tag=du_right_click,nbt={SelectedItem:{id:"minecraft:clock",tag:{NindoCraftID:9}}}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] at @s run function hh.nindocraft:headbands/kumo
execute as @a[tag=du_right_click,nbt={SelectedItem:{id:"minecraft:clock",tag:{NindoCraftID:10}}}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] at @s run function hh.nindocraft:headbands/ame
execute as @a[tag=du_right_click,nbt={SelectedItem:{id:"minecraft:clock",tag:{NindoCraftID:11}}}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] at @s run function hh.nindocraft:headbands/kusa

# Hurt tag
tag @e[tag=!hh.Hurt,nbt={HurtTime:10s}] add hh.Hurt
tag @e[tag=hh.Hurt,nbt={HurtTime:9s}] remove hh.Hurt

# Addfire Tag
execute as @e[tag=hh.addfire] at @s run function hh.nindocraft:addfire
scoreboard players add @e[tag=hh.addfirestand] hh.timer 1
execute as @e[tag=hh.addfirestand,scores={hh.timer=20..}] at @s if block ~ ~ ~ fire run setblock ~ ~ ~ air
execute as @e[tag=hh.addfirestand,scores={hh.timer=20..}] at @s run kill @s


# Jutsu

#	Transformation
execute as @a[tag=hh.transform] at @s unless score @s hh.chakra matches 5.. run tellraw @s {"text":"Not enough chakra! minimum of 5 is required!","bold":true,"color":"red"}
execute as @a[tag=hh.transform] at @s unless score @s hh.chakra matches 5.. run tag @s remove hh.transform
execute as @a[tag=hh.transform] at @s if score @s hh.chakra matches 5.. run function hh.nindocraft:jutsu/transform/init
execute as @a[tag=hh.transformed] at @s run function hh.nindocraft:jutsu/transform/main
execute as @a[tag=hh.transformed] at @s if entity @e[tag=hh.transformmob,sort=nearest,limit=1,tag=hh.Hurt] run function hh.nindocraft:jutsu/transform/release
execute as @a[tag=hh.transforming] at @s run tag @s remove hh.transforming

#	Fire Release: Cinder Technique
execute as @a[tag=hh.cinder] at @s run function hh.nindocraft:jutsu/firenature/cinder/init
execute as @e[tag=hh.cinderray] at @s run function hh.nindocraft:jutsu/firenature/cinder/main

#	Fire Release: Flare Technique
execute as @a[tag=hh.flare] at @s run function hh.nindocraft:jutsu/firenature/flare/init
execute as @e[tag=hh.flarestand] at @s run function hh.nindocraft:jutsu/firenature/flare/main

#	Fire Release: Shuriken Technique
execute as @a[tag=hh.fireshuriken] at @s run function hh.nindocraft:jutsu/firenature/shuriken/init
execute as @e[tag=hh.flaming,tag=hh.shuriken] at @s run function hh.nindocraft:jutsu/firenature/shuriken/main

#	Fire Release: Veil Technique
execute as @a[tag=hh.veil] at @s run function hh.nindocraft:jutsu/firenature/veil/init
execute as @e[tag=hh.veilray] at @s run function hh.nindocraft:jutsu/firenature/veil/main

#	Fire Release: Flame Resistance Technique
execute as @a[tag=hh.flameresistance] at @s run function hh.nindocraft:jutsu/firenature/flameresistance/init
execute as @e[tag=hh.flameresistant] at @s run function hh.nindocraft:jutsu/firenature/flameresistance/main

#	Fire Release: Flash Fan Technique
execute as @a[tag=hh.flashfan] at @s run function hh.nindocraft:jutsu/firenature/flashfan/init
execute as @e[tag=hh.flashfanstand] at @s run function hh.nindocraft:jutsu/firenature/flashfan/main

#	Fire Release: Mythical Fire Flower Technique
execute as @a[tag=hh.fireflower] at @s run function hh.nindocraft:jutsu/firenature/fireflower/init
execute as @e[tag=hh.fireflowerstand] at @s run function hh.nindocraft:jutsu/firenature/fireflower/main
execute as @a at @s unless entity @e[tag=hh.fireflowerstand,distance=..6] run tag @s remove hh.caster

#	Fire Release: Flame Sphere Technique
execute as @a[tag=hh.flamesphere] at @s run function hh.nindocraft:jutsu/firenature/flamesphere/init
execute as @a[tag=hh.flamesphereing] at @s run function hh.nindocraft:jutsu/firenature/flamesphere/main
execute as @a[tag=hh.flamesphereing,tag=hh.Hurt] at @s run function hh.nindocraft:jutsu/firenature/flamesphere/release

#	Fire Release: Great Fireball Technique
execute as @a[tag=hh.fireball] at @s run function hh.nindocraft:jutsu/firenature/greatfireball/init
execute as @e[tag=hh.fireballstand] at @s run function hh.nindocraft:jutsu/firenature/greatfireball/main
execute as @a at @s unless entity @e[tag=hh.fireballstand,distance=..6] run tag @s remove hh.caster

#	Fire Release: Dragon Flame Technique
execute as @a[tag=hh.dragonflame] at @s run function hh.nindocraft:jutsu/firenature/dragonflame/init
execute as @a[tag=hh.dragonflaming] at @s run function hh.nindocraft:jutsu/firenature/dragonflame/main
execute as @e[tag=hh.dragonflamestand] at @s run function hh.nindocraft:jutsu/firenature/dragonflame/raycommands

#	Water release: Fish Spit Technique
execute as @a[tag=hh.fishspit] at @s run function hh.nindocraft:jutsu/waternature/fishspit/init
execute as @e[tag=hh.fishspitray] at @s run function hh.nindocraft:jutsu/waternature/fishspit/main

#	Water release: Water Pellet Technique
execute as @a[tag=hh.waterpellet] at @s run function hh.nindocraft:jutsu/waternature/waterpellet/init
execute as @e[tag=hh.waterpelletray] at @s run function hh.nindocraft:jutsu/waternature/waterpellet/main

#	Water release: Water Shuriken Technique
execute as @a[tag=hh.watershuriken] at @s run function hh.nindocraft:jutsu/waternature/watershuriken/init
execute as @e[tag=hh.watershurikenray] at @s run function hh.nindocraft:jutsu/waternature/watershuriken/main

#	Water release: Water Puddle Technique
execute as @a[tag=hh.waterpuddle] at @s run function hh.nindocraft:jutsu/waternature/waterpuddle/init
execute as @e[tag=hh.isAPuddle] at @s run function hh.nindocraft:jutsu/waternature/waterpuddle/main

#   Water release: Beach Crab Technique
execute as @a[tag=hh.beachcrab] at @s run function hh.nindocraft:jutsu/waternature/beachcrab/init
execute as @e[tag=hh.beachcrabray] at @s run function hh.nindocraft:jutsu/waternature/beachcrab/raycommands
execute as @e[tag=hh.beachcrabbed] at @s run function hh.nindocraft:jutsu/waternature/beachcrab/main

# Water release: Water Shield Technique
execute as @a[tag=hh.watershield] at @s run function hh.nindocraft:jutsu/waternature/watershield/init
execute as @a[tag=hh.watershielding] at @s run function hh.nindocraft:jutsu/waternature/watershield/main
execute as @a[tag=hh.watershielding,tag=hh.Hurt] at @s run function hh.nindocraft:jutsu/waternature/watershield/release

# Chakra
execute as @a at @s run title @s actionbar ["",{"score":{"name":"@s","objective":"hh.chakra"},"bold":true,"color":"dark_aqua"},{"text":"/"},{"score":{"name":"@s","objective":"hh.stamina"},"bold":true,"color":"dark_purple"}]
scoreboard players add @a[tag=!hh.chakracontrol] hh.chakraUp 1
scoreboard players add @a hh.chakra 0
execute as @a[scores={hh.chakraUp=20..},tag=!hh.chakracontrol] at @s run scoreboard players add @s hh.stamina 1
execute as @a[scores={hh.chakraUp=20..},tag=!hh.chakracontrol] at @s run scoreboard players set @s hh.chakraUp 0
execute as @a[scores={hh.chakra=..0}] at @s run scoreboard players set @s hh.chakra 0
execute as @a at @s if score @s hh.stamina > @s hh.maxStamina run scoreboard players operation @s hh.stamina = @s hh.maxStamina
execute as @a[scores={hh.crouch=1..},tag=!hh.chakracontrol,tag=hh.chakraenabled,tag=!hh.flameresistant,tag=!hh.flamesphereing,tag=!hh.isAPuddle,tag=!hh.watershielding] at @s unless score @s hh.stamina matches 0 run scoreboard players add @s hh.chakra 1
execute as @a[scores={hh.crouch=1..},tag=!hh.chakracontrol,tag=hh.chakraenabled,tag=!hh.flameresistant,tag=!hh.flamesphereing,tag=!hh.isAPuddle,tag=!hh.watershielding] at @s unless score @s hh.stamina matches 0 run scoreboard players remove @s hh.stamina 1
execute as @a[scores={hh.crouch=1..},tag=!hh.chakracontrol,tag=hh.chakraenabled,tag=!hh.flameresistant,tag=!hh.flamesphereing,tag=!hh.isAPuddle,tag=!hh.watershielding] at @s unless score @s hh.stamina matches 0 run particle minecraft:dust 0.4 1 1 1 ~ ~1 ~ 0.3 0.3 0.3 1 20 normal
execute as @a[scores={hh.crouch=1..}] at @s run scoreboard players set @s hh.crouch 0
execute as @a at @s run scoreboard players operation @s hh.stamina50 = @s hh.maxStamina
execute as @a at @s run scoreboard players operation @s hh.stamina50 /= #hh.math hh.2
execute as @a at @s run scoreboard players operation @s hh.stamina25 = @s hh.maxStamina
execute as @a at @s run scoreboard players operation @s hh.stamina25 /= #hh.math hh.4
execute as @a at @s run scoreboard players operation @s hh.stamina10 = @s hh.maxStamina
execute as @a at @s run scoreboard players operation @s hh.stamina10 /= #hh.math hh.10
execute as @a at @s run scoreboard players operation @s hh.stamina5 = @s hh.maxStamina
execute as @a at @s run scoreboard players operation @s hh.stamina5 /= #hh.math hh.20

execute as @a at @s if score @s hh.stamina <= @s hh.stamina50 run effect give @s slowness 1 0 true
execute as @a at @s if score @s hh.stamina <= @s hh.stamina25 run effect give @s slowness 1 1 true
execute as @a at @s if score @s hh.stamina <= @s hh.stamina10 run effect give @s slowness 1 3 true
execute as @a at @s if score @s hh.stamina <= @s hh.stamina10 run effect give @s blindness 2 0 true
execute as @a at @s if score @s hh.stamina <= @s hh.stamina10 run effect give @s night_vision 1 0 true
execute as @a at @s if score @s hh.stamina <= @s hh.stamina5 run effect give @s wither 1 0 true
execute as @a[scores={hh.stamina=..0}] at @s run effect give @s wither 1 3 true

execute as @a[scores={hh.death=1..}] at @s run scoreboard players set @s hh.chakra 0
execute as @a[scores={hh.death=1..}] at @s run scoreboard players operation @s hh.stamina = @s hh.maxStamina
execute as @a[scores={hh.death=1..}] at @s run scoreboard players set @s hh.healthProg 0
execute as @a[scores={hh.death=1..}] at @s run scoreboard players set @s hh.taiProg 0
execute as @a[tag=du_moving,scores={hh.death=1..}] at @s run scoreboard players set @s hh.death 0

# ChakraControlEffects
execute as @a[tag=hh.chakracontrol] at @s run function hh.nindocraft:jutsu/chakracontrol/main

# Level/NatureSystem

function hh.nindocraft:levels

execute as @a[tag=hh.clickedfire1] run scoreboard players set @s hh.firenature 1
execute as @a[tag=hh.clickedwater1] run scoreboard players set @s hh.waternature 1
execute as @a[tag=hh.clickedearth1] run scoreboard players set @s hh.earthnature 1
execute as @a[tag=hh.clickedwind1] run scoreboard players set @s hh.windnature 1
execute as @a[tag=hh.clickedlightning1] run scoreboard players set @s hh.windnature 1
execute as @a unless entity @s[tag=hh.clickedfire1] run scoreboard players set @s hh.firenature 0
execute as @a unless entity @s[tag=hh.clickedwater1] run scoreboard players set @s hh.waternature 0
execute as @a unless entity @s[tag=hh.clickedearth1] run scoreboard players set @s hh.earthnature 0
execute as @a unless entity @s[tag=hh.clickedwind1] run scoreboard players set @s hh.windnature 0
execute as @a unless entity @s[tag=hh.clickedlightning1] run scoreboard players set @s hh.windnature 0

execute as @a[tag=hh.clickedfire2] run scoreboard players set @s hh.firenature 1
execute as @a[tag=hh.clickedwater2] run scoreboard players set @s hh.waternature 1
execute as @a[tag=hh.clickedearth2] run scoreboard players set @s hh.earthnature 1
execute as @a[tag=hh.clickedwind2] run scoreboard players set @s hh.windnature 1
execute as @a[tag=hh.clickedlightning2] run scoreboard players set @s hh.windnature 1
execute as @a unless entity @s[tag=hh.clickedfire2] run scoreboard players set @s hh.firenature 0
execute as @a unless entity @s[tag=hh.clickedwater2] run scoreboard players set @s hh.waternature 0
execute as @a unless entity @s[tag=hh.clickedearth2] run scoreboard players set @s hh.earthnature 0
execute as @a unless entity @s[tag=hh.clickedwind2] run scoreboard players set @s hh.windnature 0
execute as @a unless entity @s[tag=hh.clickedlightning2] run scoreboard players set @s hh.windnature 0

scoreboard players add @a hh.nindoStart 0
scoreboard players add @a hh.narutoLvl 0

#	Triggers

scoreboard players enable @a hh.fjTrigger
#scoreboard players enable @a hh.clanTrigger1
scoreboard players enable @a hh.villTrigger

execute as @a[scores={hh.fjTrigger=1}] run function hh.nindocraft:firstjoin/fire1
execute as @a[scores={hh.fjTrigger=2}] run function hh.nindocraft:firstjoin/water1
execute as @a[scores={hh.fjTrigger=3}] run function hh.nindocraft:firstjoin/wind1
execute as @a[scores={hh.fjTrigger=4}] run function hh.nindocraft:firstjoin/lightning1
execute as @a[scores={hh.fjTrigger=5}] run function hh.nindocraft:firstjoin/earth1
execute as @a[scores={hh.fjTrigger=6}] run function hh.nindocraft:firstjoin/fire2
execute as @a[scores={hh.fjTrigger=7}] run function hh.nindocraft:firstjoin/water2
execute as @a[scores={hh.fjTrigger=8}] run function hh.nindocraft:firstjoin/wind2
execute as @a[scores={hh.fjTrigger=9}] run function hh.nindocraft:firstjoin/lightning2
execute as @a[scores={hh.fjTrigger=10}] run function hh.nindocraft:hfirstjoin/earth2
execute as @a[scores={hh.fjTrigger=0..}] run scoreboard players set @s hh.fjTrigger 0

execute as @a[scores={hh.villTrigger=1},tag=!hh.konoha,tag=!hh.suna,tag=!hh.kiri,tag=!hh.oto,tag=!hh.taki,tag=!hh.iwa,tag=!hh.kumo,tag=!hh.ame,tag=!hh.kusa] run function hh.nindocraft:village/konoha
execute as @a[scores={hh.villTrigger=2},tag=!hh.konoha,tag=!hh.suna,tag=!hh.kiri,tag=!hh.oto,tag=!hh.taki,tag=!hh.iwa,tag=!hh.kumo,tag=!hh.ame,tag=!hh.kusa] run function hh.nindocraft:village/suna
execute as @a[scores={hh.villTrigger=3},tag=!hh.konoha,tag=!hh.suna,tag=!hh.kiri,tag=!hh.oto,tag=!hh.taki,tag=!hh.iwa,tag=!hh.kumo,tag=!hh.ame,tag=!hh.kusa] run function hh.nindocraft:village/kiri
execute as @a[scores={hh.villTrigger=4},tag=!hh.konoha,tag=!hh.suna,tag=!hh.kiri,tag=!hh.oto,tag=!hh.taki,tag=!hh.iwa,tag=!hh.kumo,tag=!hh.ame,tag=!hh.kusa] run function hh.nindocraft:village/oto
execute as @a[scores={hh.villTrigger=5},tag=!hh.konoha,tag=!hh.suna,tag=!hh.kiri,tag=!hh.oto,tag=!hh.taki,tag=!hh.iwa,tag=!hh.kumo,tag=!hh.ame,tag=!hh.kusa] run function hh.nindocraft:village/taki
execute as @a[scores={hh.villTrigger=6},tag=!hh.konoha,tag=!hh.suna,tag=!hh.kiri,tag=!hh.oto,tag=!hh.taki,tag=!hh.iwa,tag=!hh.kumo,tag=!hh.ame,tag=!hh.kusa] run function hh.nindocraft:village/iwa
execute as @a[scores={hh.villTrigger=7},tag=!hh.konoha,tag=!hh.suna,tag=!hh.kiri,tag=!hh.oto,tag=!hh.taki,tag=!hh.iwa,tag=!hh.kumo,tag=!hh.ame,tag=!hh.kusa] run function hh.nindocraft:village/kumo
execute as @a[scores={hh.villTrigger=8},tag=!hh.konoha,tag=!hh.suna,tag=!hh.kiri,tag=!hh.oto,tag=!hh.taki,tag=!hh.iwa,tag=!hh.kumo,tag=!hh.ame,tag=!hh.kusa] run function hh.nindocraft:village/ame
execute as @a[scores={hh.villTrigger=9},tag=!hh.konoha,tag=!hh.suna,tag=!hh.kiri,tag=!hh.oto,tag=!hh.taki,tag=!hh.iwa,tag=!hh.kumo,tag=!hh.ame,tag=!hh.kusa] run function hh.nindocraft:village/kusa
execute as @a[scores={hh.villTrigger=0..}] run scoreboard players set @s hh.villTrigger 0

#	Clans
#execute as @a[scores={hh.clanTrigger1=1}] run tag @s add hh.hyuga
#execute as @a[scores={hh.clanTrigger1=2}] run tag @s add hh.senju
#execute as @a[scores={hh.clanTrigger1=0..}] run scoreboard players set @s hh.clanTrigger1 0

#	Nature
execute as @a[scores={hh.nindoStart=0}] at @s run tellraw @s ["",{"text":"Please choose your first chakra nature:\n  - ","bold":true,"color":"aqua"},{"text":"Fire","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 1"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Water","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 2"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Wind","bold":true,"color":"gray","clickEvent":{"action":"open_url","value":"/trigger hh.fjTrigger set 3"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Lightning","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 4"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Earth","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 5"}}]
execute as @a[scores={hh.nindoStart=0}] at @s run scoreboard players set @s hh.nindoStart 1
execute as @a[tag=hh.clickedwater1] at @s run scoreboard players set @s hh.waternature 1
execute as @a[tag=hh.clickedwater1,scores={hh.nindoStart=1}] at @s run tellraw @s ["",{"text":"Please choose your second chakra nature:\n  - ","bold":true,"color":"aqua"},{"text":"Fire","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 6"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Water","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 7"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Wind","bold":true,"color":"gray","clickEvent":{"action":"open_url","value":"/trigger hh.fjTrigger set 8"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Lightning","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 9"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Earth","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 10"}}]
execute as @a[tag=hh.clickedwater1,scores={hh.nindoStart=1}] at @s run scoreboard players set @s hh.nindoStart 2
execute as @a[tag=hh.clickedwind1] at @s run scoreboard players set @s hh.windnature 1
execute as @a[tag=hh.clickedwind1,scores={hh.nindoStart=1}] at @s run tellraw @s ["",{"text":"Please choose your second chakra nature:\n  - ","bold":true,"color":"aqua"},{"text":"Fire","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 6"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Water","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 7"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Wind","bold":true,"color":"gray","clickEvent":{"action":"open_url","value":"/trigger hh.fjTrigger set 8"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Lightning","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 9"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Earth","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 10"}}]
execute as @a[tag=hh.clickedwind1,scores={hh.nindoStart=1}] at @s run scoreboard players set @s hh.nindoStart 2
execute as @a[tag=hh.clickedlightning1] at @s run scoreboard players set @s hh.windnature 1
execute as @a[tag=hh.clickedlightning1,scores={hh.nindoStart=1}] at @s run tellraw @s ["",{"text":"Please choose your second chakra nature:\n  - ","bold":true,"color":"aqua"},{"text":"Fire","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 6"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Water","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 7"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Wind","bold":true,"color":"gray","clickEvent":{"action":"open_url","value":"/trigger hh.fjTrigger set 8"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Lightning","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 9"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Earth","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 10"}}]
execute as @a[tag=hh.clickedlightning1,scores={hh.nindoStart=1}] at @s run scoreboard players set @s hh.nindoStart 2
execute as @a[tag=hh.clickedearth1] at @s run scoreboard players set @s hh.earthnature 1
execute as @a[tag=hh.clickedearth1,scores={hh.nindoStart=1}] at @s run tellraw @s ["",{"text":"Please choose your second chakra nature:\n  - ","bold":true,"color":"aqua"},{"text":"Fire","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 6"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Water","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 7"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Wind","bold":true,"color":"gray","clickEvent":{"action":"open_url","value":"/trigger hh.fjTrigger set 8"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Lightning","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 9"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Earth","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 10"}}]
execute as @a[tag=hh.clickedearth1,scores={hh.nindoStart=1}] at @s run scoreboard players set @s hh.nindoStart 2
execute as @a[tag=hh.clickedfire1] at @s run scoreboard players set @s hh.firenature 1
execute as @a[tag=hh.clickedfire1,scores={hh.nindoStart=1}] at @s run tellraw @s ["",{"text":"Please choose your second chakra nature:\n  - ","bold":true,"color":"aqua"},{"text":"Fire","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 6"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Water","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 7"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Wind","bold":true,"color":"gray","clickEvent":{"action":"open_url","value":"/trigger hh.fjTrigger set 8"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Lightning","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 9"}},{"text":"\n"},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Earth","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger hh.fjTrigger set 10"}}]
execute as @a[tag=hh.clickedfire1,scores={hh.nindoStart=1}] at @s run scoreboard players set @s hh.nindoStart 2

execute as @a[tag=hh.clickedwater2] at @s run scoreboard players set @s hh.waternature 1
execute as @a[tag=hh.clickedwater2] at @s run scoreboard players add @s hh.narutoExp 0
execute as @a[tag=hh.clickedwind2] at @s run scoreboard players set @s hh.windnature 1
execute as @a[tag=hh.clickedwind2] at @s run scoreboard players add @s hh.narutoExp 0
execute as @a[tag=hh.clickedlightning2] at @s run scoreboard players set @s hh.windnature 1
execute as @a[tag=hh.clickedlightning2] at @s run scoreboard players add @s hh.narutoExp 0
execute as @a[tag=hh.clickedearth2] at @s run scoreboard players set @s hh.earthnature 1
execute as @a[tag=hh.clickedearth2] at @s run scoreboard players add @s hh.narutoExp 0
execute as @a[tag=hh.clickedfire2] at @s run scoreboard players set @s hh.firenature 1
execute as @a[tag=hh.clickedfire2] at @s run scoreboard players add @s hh.narutoExp 0

#	Village

execute as @a[tag=hh.clickedwater2,scores={hh.nindoStart=2}] run tellraw @s ["",{"text":"Please choose your village:\n  - ","bold":true,"color":"aqua"},{"text":"Konohagakure","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 1"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Sunagakure","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 2"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Kirigakure","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 3"}},{"text":"\n  - ","bold":true,"color":"aqua"},{"text":"Otogakure","bold":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 4"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Takigakure","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 5"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Iwagakure","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 6"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Kumogakure","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 7"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Amegakure","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 8"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Kusagakure","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 9"}}]
execute as @a[tag=hh.clickedwater2,scores={hh.nindoStart=2}] run scoreboard players set @s hh.nindoStart 3
execute as @a[tag=hh.clickedwind2,scores={hh.nindoStart=2}] run tellraw @s ["",{"text":"Please choose your village:\n  - ","bold":true,"color":"aqua"},{"text":"Konohagakure","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 1"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Sunagakure","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 2"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Kirigakure","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 3"}},{"text":"\n  - ","bold":true,"color":"aqua"},{"text":"Otogakure","bold":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 4"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Takigakure","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 5"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Iwagakure","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 6"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Kumogakure","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 7"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Amegakure","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 8"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Kusagakure","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 9"}}]
execute as @a[tag=hh.clickedwind2,scores={hh.nindoStart=2}] run scoreboard players set @s hh.nindoStart 3
execute as @a[tag=hh.clickedlightning2,scores={hh.nindoStart=2}] run tellraw @s ["",{"text":"Please choose your village:\n  - ","bold":true,"color":"aqua"},{"text":"Konohagakure","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 1"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Sunagakure","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 2"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Kirigakure","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 3"}},{"text":"\n  - ","bold":true,"color":"aqua"},{"text":"Otogakure","bold":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 4"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Takigakure","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 5"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Iwagakure","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 6"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Kumogakure","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 7"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Amegakure","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 8"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Kusagakure","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 9"}}]
execute as @a[tag=hh.clickedlightning2,scores={hh.nindoStart=2}] run scoreboard players set @s hh.nindoStart 3
execute as @a[tag=hh.clickedearth2,scores={hh.nindoStart=2}] run tellraw @s ["",{"text":"Please choose your village:\n  - ","bold":true,"color":"aqua"},{"text":"Konohagakure","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 1"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Sunagakure","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 2"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Kirigakure","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 3"}},{"text":"\n  - ","bold":true,"color":"aqua"},{"text":"Otogakure","bold":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 4"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Takigakure","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 5"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Iwagakure","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 6"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Kumogakure","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 7"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Amegakure","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 8"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Kusagakure","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 9"}}]
execute as @a[tag=hh.clickedearth2,scores={hh.nindoStart=2}] run scoreboard players set @s hh.nindoStart 3
execute as @a[tag=hh.clickedfire2,scores={hh.nindoStart=2}] run tellraw @s ["",{"text":"Please choose your village:\n  - ","bold":true,"color":"aqua"},{"text":"Konohagakure","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 1"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Sunagakure","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 2"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Kirigakure","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 3"}},{"text":"\n  - ","bold":true,"color":"aqua"},{"text":"Otogakure","bold":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 4"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Takigakure","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 5"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Iwagakure","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 6"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Kumogakure","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 7"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Amegakure","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 8"}},{"text":"\n","bold":true},{"text":"  - ","bold":true,"color":"aqua"},{"text":"Kusagakure","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger hh.villTrigger set 9"}}]
execute as @a[tag=hh.clickedfire2,scores={hh.nindoStart=2}] run scoreboard players set @s hh.nindoStart 3

#	Clan

#execute as @a[tag=hh.konoha,scores={hh.nindoStart=3}] run tellraw @s ["",{"text":"Please choose your clan from the list below:","bold":true,"color":"aqua"},{"text":"\n","bold":true},{"text":"-","bold":true,"color":"aqua"},{"text":" ","bold":true},{"text":"Hyuga","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger hh.clanTrigger1 set 1"}},{"text":"\n"},{"text":"-","bold":true,"color":"aqua"},{"text":" ","bold":true},{"text":"Senju","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger hh.clanTrigger1 set 2"}}]
#execute as @a[tag=hh.konoha,scores={hh.nindoStart=3}] run scoreboard players set @s hh.nindoStart 4

#	First Join

scoreboard players add @a hh.firstjoin 0
execute as @a[scores={hh.firstjoin=..0}] at @s run function hh.nindocraft:firstjoin

# Exp Kills
execute as @a[scores={hh.blazekill=1..}] at @s run scoreboard players add @s hh.narutoExp 30
execute as @a[scores={hh.blazekill=1..}] at @s run scoreboard players remove @s hh.blazekill 1

execute as @a[scores={hh.cavespidrkill=1..}] at @s run scoreboard players add @s hh.narutoExp 20
execute as @a[scores={hh.cavespidrkill=1..}] at @s run scoreboard players remove @s hh.cavespidrkill 1

execute as @a[scores={hh.creeperkill=1..}] at @s run scoreboard players add @s hh.narutoExp 14
execute as @a[scores={hh.creeperkill=1..}] at @s run scoreboard players remove @s hh.creeperkill 1

execute as @a[scores={hh.drownedkill=1..}] at @s run scoreboard players add @s hh.narutoExp 16
execute as @a[scores={hh.drownedkill=1..}] at @s run scoreboard players remove @s hh.drownedkill 1

execute as @a[scores={hh.eldrguardkill=1..}] at @s run scoreboard players add @s hh.narutoExp 50
execute as @a[scores={hh.eldrguardkill=1..}] at @s run scoreboard players remove @s hh.eldrguardkill 1

execute as @a[scores={hh.endermankill=1..}] at @s run scoreboard players add @s hh.narutoExp 18
execute as @a[scores={hh.endermankill=1..}] at @s run scoreboard players remove @s hh.endermankill 1

execute as @a[scores={hh.endermitekill=1..}] at @s run scoreboard players add @s hh.narutoExp 6
execute as @a[scores={hh.endermitekill=1..}] at @s run scoreboard players remove @s hh.endermitekill 1

execute as @a[scores={hh.evokerkill=1..}] at @s run scoreboard players add @s hh.narutoExp 40
execute as @a[scores={hh.evokerkill=1..}] at @s run scoreboard players remove @s hh.evokerkill 1

execute as @a[scores={hh.ghastkill=1..}] at @s run scoreboard players add @s hh.narutoExp 30
execute as @a[scores={hh.ghastkill=1..}] at @s run scoreboard players remove @s hh.ghastkill 1

execute as @a[scores={hh.guardkill=1..}] at @s run scoreboard players add @s hh.narutoExp 35
execute as @a[scores={hh.guardkill=1..}] at @s run scoreboard players remove @s hh.guardkill 1

execute as @a[scores={hh.huskkill=1..}] at @s run scoreboard players add @s hh.narutoExp 10
execute as @a[scores={hh.huskkill=1..}] at @s run scoreboard players remove @s hh.huskkill 1

execute as @a[scores={hh.huskkill=1..}] at @s run scoreboard players add @s hh.narutoExp 25
execute as @a[scores={hh.huskkill=1..}] at @s run scoreboard players remove @s hh.huskkill 1

execute as @a[scores={hh.phantomkill=1..}] at @s run scoreboard players add @s hh.narutoExp 20
execute as @a[scores={hh.phantomkill=1..}] at @s run scoreboard players remove @s hh.phantomkill 1

execute as @a[scores={hh.shulkerkill=1..}] at @s run scoreboard players add @s hh.narutoExp 28
execute as @a[scores={hh.shulkerkill=1..}] at @s run scoreboard players remove @s hh.shulkerkill 1

execute as @a[scores={hh.silvrfishkill=1..}] at @s run scoreboard players add @s hh.narutoExp 6
execute as @a[scores={hh.silvrfishkill=1..}] at @s run scoreboard players remove @s hh.silvrfishkill 1

execute as @a[scores={hh.skeletonkill=1..}] at @s run scoreboard players add @s hh.narutoExp 12
execute as @a[scores={hh.skeletonkill=1..}] at @s run scoreboard players remove @s hh.skeletonkill 1

execute as @a[scores={hh.slimekill=1..}] at @s run scoreboard players add @s hh.narutoExp 16
execute as @a[scores={hh.slimekill=1..}] at @s run scoreboard players remove @s hh.slimekill 1

execute as @a[scores={hh.spiderkill=1..}] at @s run scoreboard players add @s hh.narutoExp 10
execute as @a[scores={hh.spiderkill=1..}] at @s run scoreboard players remove @s hh.spiderkill 1

execute as @a[scores={hh.straykill=1..}] at @s run scoreboard players add @s hh.narutoExp 12
execute as @a[scores={hh.straykill=1..}] at @s run scoreboard players remove @s hh.straykill 1

execute as @a[scores={hh.vexkill=1..}] at @s run scoreboard players add @s hh.narutoExp 20
execute as @a[scores={hh.vexkill=1..}] at @s run scoreboard players remove @s hh.vexkill 1

execute as @a[scores={hh.vindikill=1..}] at @s run scoreboard players add @s hh.narutoExp 35
execute as @a[scores={hh.vindikill=1..}] at @s run scoreboard players remove @s hh.vindikill 1

execute as @a[scores={hh.witchkill=1..}] at @s run scoreboard players add @s hh.narutoExp 24
execute as @a[scores={hh.witchkill=1..}] at @s run scoreboard players remove @s hh.witchkill 1

execute as @a[scores={hh.withskelekill=1..}] at @s run scoreboard players add @s hh.narutoExp 35
execute as @a[scores={hh.withskelekill=1..}] at @s run scoreboard players remove @s hh.withskelekill 1

execute as @a[scores={hh.zombiekill=1..}] at @s run scoreboard players add @s hh.narutoExp 10
execute as @a[scores={hh.zombiekill=1..}] at @s run scoreboard players remove @s hh.zombiekill 1

execute as @a[scores={hh.pigmankill=1..}] at @s run scoreboard players add @s hh.narutoExp 16
execute as @a[scores={hh.pigmankill=1..}] at @s run scoreboard players remove @s hh.pigmankill 1

execute as @a[scores={hh.zvillagerkill=1..}] at @s run scoreboard players add @s hh.narutoExp 10
execute as @a[scores={hh.zvillagerkill=1..}] at @s run scoreboard players remove @s hh.zvillagerkill 1

# Explosive Tag
function hh.nindocraft:ninjatools/paperbomb/main

# Jutsu Scroll

function hh.nindocraft:jutsu/scroll/main

# Drop Corrections
scoreboard players set @a hh.dropClock 0
scoreboard players set @a hh.dropIronSword 0