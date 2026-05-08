scoreboard players set #match_state pp.match.state 2
gamemode spectator @a[tag=pp.in_match]
function party_pvp:score/recalc_ranks
execute as @a[tag=pp.in_match] run function party_pvp:match/show_result
execute as @a[tag=pp.in_match,scores={pp.rank=2}] at @s run function party_pvp:match/fireworks
schedule function party_pvp:match/return_to_lobby 100t