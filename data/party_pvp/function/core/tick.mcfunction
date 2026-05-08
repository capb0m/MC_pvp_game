# 試合中なら試合中のtickfunctionを実行
execute if score #match_state pp.match.state matches 1 run function party_pvp:match/tick
