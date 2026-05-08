scoreboard players set #match_timer pp.match.timer 3600
tag @a add pp.in_match
gamemode adventure @a
scoreboard players set @a[tag=pp.in_match] pp.score 0
scoreboard players set @a[tag=pp.in_match] pp.score.kills 0
scoreboard players set @a[tag=pp.in_match] pp.score.deaths 0
scoreboard players set @a[tag=pp.in_match] pp.rank 0
tp @a 0 80 0
scoreboard players set #match_state pp.match.state 1
function party_pvp:ui/bossbar/init
title @a[tag=pp.in_match] title {"text":"試合開始！","color":"gold","bold":true}