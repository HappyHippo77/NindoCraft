# Special thanks to: ShelLuser:https://www.planetminecraft.com/member/shelluser/
tellraw @a ["",{"text":"Successfully Loaded: ","bold":true,"color":"yellow"},{"text":"NindoCraft (Beta 1.0) ","bold":true,"color":"blue"},{"text":"by HappyHippo77!","bold":true,"color":"green"}]
execute as @a[tag=hh.Admin] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
scoreboard objectives add hh.firstjoin dummy
scoreboard objectives add hh.dropIronSword dropped:minecraft.iron_sword
scoreboard objectives add hh.dropClock dropped:minecraft.clock
scoreboard objectives add hh.ccboolean dummy
scoreboard objectives add hh.paprBombTimer dummy
scoreboard objectives add hh.chakra dummy
scoreboard objectives add hh.crouch minecraft.custom:minecraft.sneak_time
scoreboard objectives add hh.death deathCount
scoreboard objectives add hh.narutoExp dummy
scoreboard objectives add hh.narutoLvl dummy
scoreboard objectives add hh.nindoStart dummy
scoreboard objectives add hh.stamina dummy
scoreboard objectives add hh.maxStamina dummy
scoreboard objectives add hh.ninjutsu dummy
scoreboard objectives add hh.genjutsu dummy
scoreboard objectives add hh.taijutsu dummy
scoreboard objectives add hh.maxHealth dummy
scoreboard objectives add hh.healthProg dummy
scoreboard objectives add hh.taiProg dummy
scoreboard objectives add an.success dummy
scoreboard objectives add hh.taiProg2 dummy
scoreboard objectives add hh.scrollCurrent dummy
scoreboard objectives add hh.scrollMax dummy
scoreboard objectives add hh.currentSlot dummy
scoreboard objectives add hh.previousSlot dummy

scoreboard objectives add hh.itemCount dummy

scoreboard objectives add hh.slot0 dummy
scoreboard objectives add hh.slot1 dummy
scoreboard objectives add hh.slot2 dummy
scoreboard objectives add hh.slot3 dummy
scoreboard objectives add hh.slot4 dummy
scoreboard objectives add hh.slot5 dummy
scoreboard objectives add hh.slot6 dummy
scoreboard objectives add hh.slot7 dummy
scoreboard objectives add hh.slot8 dummy

scoreboard objectives add hh.count0 dummy
scoreboard objectives add hh.count1 dummy
scoreboard objectives add hh.count2 dummy
scoreboard objectives add hh.count3 dummy
scoreboard objectives add hh.count4 dummy
scoreboard objectives add hh.count5 dummy
scoreboard objectives add hh.count6 dummy
scoreboard objectives add hh.count7 dummy
scoreboard objectives add hh.count8 dummy
scoreboard objectives add hh.count dummy
scoreboard objectives add hh.slotTemp dummy
scoreboard objectives add hh.crafted dummy

scoreboard objectives add hh.1 dummy
scoreboard objectives add hh.2 dummy
scoreboard objectives add hh.3 dummy
scoreboard objectives add hh.4 dummy
scoreboard objectives add hh.5 dummy
scoreboard objectives add hh.10 dummy
scoreboard objectives add hh.20 dummy
scoreboard players set #hh.math hh.1 1
scoreboard players set #hh.math hh.2 2
scoreboard players set #hh.math hh.3 3
scoreboard players set #hh.math hh.4 4
scoreboard players set #hh.math hh.5 5
scoreboard players set #hh.math hh.10 10
scoreboard players set #hh.math hh.20 20
scoreboard objectives add hh.stamina50 dummy
scoreboard objectives add hh.stamina25 dummy
scoreboard objectives add hh.stamina10 dummy
scoreboard objectives add hh.stamina5 dummy

# No-Handsign jutsu
scoreboard objectives add hh.chakractrl dummy
scoreboard objectives add hh.transform dummy
scoreboard objectives add hh.fireshuriken dummy

scoreboard objectives modify hh.narutoLvl displayname {"text":"Level","color":"yellow"}
scoreboard objectives setdisplay belowName hh.narutoLvl
scoreboard objectives modify hh.taijutsu displayname {"text":"Taijutsu","color":"dark_green"}
scoreboard objectives modify hh.genjutsu displayname {"text":"Genjutsu","color":"gray"}

scoreboard objectives add hh.blazekill minecraft.killed:minecraft.blaze
scoreboard objectives add hh.cavespidrkill minecraft.killed:minecraft.cave_spider
scoreboard objectives add hh.creeperkill minecraft.killed:minecraft.creeper
scoreboard objectives add hh.drownedkill minecraft.killed:minecraft.drowned
scoreboard objectives add hh.eldrguardkill minecraft.killed:minecraft.elder_guardian
scoreboard objectives add hh.endermankill minecraft.killed:minecraft.enderman
scoreboard objectives add hh.endermitekill minecraft.killed:minecraft.endermite
scoreboard objectives add hh.evokerkill minecraft.killed:minecraft.evoker
scoreboard objectives add hh.ghastkill minecraft.killed:minecraft.ghast
scoreboard objectives add hh.guardkill minecraft.killed:minecraft.guardian
scoreboard objectives add hh.huskkill minecraft.killed:minecraft.husk
scoreboard objectives add hh.magmakill minecraft.killed:minecraft.magma_cube
scoreboard objectives add hh.phantomkill minecraft.killed:minecraft.phantom
scoreboard objectives add hh.shulkerkill minecraft.killed:minecraft.shulker
scoreboard objectives add hh.silvrfishkill minecraft.killed:minecraft.silverfish
scoreboard objectives add hh.skeletonkill minecraft.killed:minecraft.skeleton
scoreboard objectives add hh.slimekill minecraft.killed:minecraft.slime
scoreboard objectives add hh.spiderkill minecraft.killed:minecraft.spider
scoreboard objectives add hh.straykill minecraft.killed:minecraft.stray
scoreboard objectives add hh.vexkill minecraft.killed:minecraft.vex
scoreboard objectives add hh.vindikill minecraft.killed:minecraft.vindicator
scoreboard objectives add hh.witchkill minecraft.killed:minecraft.witch
scoreboard objectives add hh.withskelekill minecraft.killed:minecraft.wither_skeleton
scoreboard objectives add hh.zombiekill minecraft.killed:minecraft.zombie
scoreboard objectives add hh.pigmankill minecraft.killed:minecraft.zombie_pigman
scoreboard objectives add hh.zvillagerkill minecraft.killed:minecraft.zombie_villager

scoreboard objectives add hh.waternature dummy
scoreboard objectives add hh.windnature dummy
scoreboard objectives add hh.lightnature dummy
scoreboard objectives add hh.earthnature dummy
scoreboard objectives add hh.firenature dummy

scoreboard objectives add hh.chakraUp dummy
scoreboard objectives add hh.statPoints dummy
scoreboard objectives modify hh.statPoints displayname {"text":"Stat Points","color":"yellow"}

scoreboard objectives add hh.posX dummy
scoreboard objectives add hh.posY dummy
scoreboard objectives add hh.posZ dummy
scoreboard objectives add hh.int dummy
scoreboard objectives add hh.pos dummy

scoreboard objectives add hh.cmdTrigger trigger
scoreboard objectives add hh.fjTrigger trigger
scoreboard objectives add hh.villTrigger trigger
scoreboard objectives add hh.clanTrigger1 trigger

scoreboard objectives add hh.handsign1 dummy
scoreboard objectives add hh.handsign2 dummy
scoreboard objectives add hh.handsign3 dummy
scoreboard objectives add hh.handsign4 dummy
scoreboard objectives add hh.handsign5 dummy
scoreboard objectives add hh.handsign6 dummy
scoreboard objectives add hh.handsign7 dummy
scoreboard objectives add hh.handsign8 dummy
scoreboard objectives add hh.handsign9 dummy
scoreboard objectives add hh.handsign10 dummy

scoreboard objectives add hh.handsigntimer dummy
scoreboard objectives add hh.hsSuccess dummy

scoreboard objectives add hh.transformtype dummy

scoreboard objectives add hh.cctimer dummy
scoreboard objectives add hh.timer dummy
scoreboard objectives add hh.timer1 dummy
scoreboard objectives add hh.timer2 dummy
scoreboard objectives add hh.timer3 dummy
scoreboard objectives add hh.scrolltimer dummy