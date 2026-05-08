tag @s add pp.is_dead
gamemode spectator @s
scoreboard players remove @s pp.score 1
scoreboard players add @s pp.score.deaths 1
execute if score @s pp.kb.attacker.timer matches 1.. run function party_pvp:score/on_kill
schedule function party_pvp:combat/respawn_all 10t
# handle_deathを読んだ時点では実行者を持つが、scheduleは実行者を保存しないので、respawn_allでもう一度死亡者を探す必要がある