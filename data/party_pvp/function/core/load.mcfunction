#/reloadされたときに一度だけ実行する
# ----scoreboards----
scoreboard objectives add pp.score dummy
scoreboard objectives add pp.score.kills dummy
scoreboard objectives add pp.score.deaths dummy
scoreboard objectives add pp.match.timer dummy
scoreboard objectives add pp.event.timer dummy
scoreboard objectives add pp.rank dummy
scoreboard objectives add pp.kb.attacker.timer dummy
scoreboard objectives add pp.kb.dx dummy
scoreboard objectives add pp.kb.dz dummy
scoreboard objectives add pp.kb.last_attacker dummy
scoreboard objectives add pp.match.state dummy
# match.stateは0=lobby, 1=in match, 2=ending now

# ----teams----
team add pp_red
team add pp_blue
team modify pp_red friendlyFire false
team modify pp_blue friendlyFire false
team modify pp_red color red
team modify pp_blue color blue

# ----initialization ----
scoreboard players set #match_state pp.match.state 0

# ----default settingsを反映----
# 初回時のみ実行
execute unless data storage party_pvp:config match_duration_seconds run function party_pvp:admin/reset_config