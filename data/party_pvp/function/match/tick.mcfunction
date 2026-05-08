# 直接tickごとに実行されることはないが、試合中core/tick.mcfunctionから毎tick呼ばれる
# 死亡判定は毎tick取るのが必須だが、試合時間やhit後の時間管理はそこまで厳密である必要がないので、パフォーマンス次第では要修正
scoreboard players remove #match_timer pp.match.timer 1
execute if score #match_timer pp.match.timer matches ..0 run function party_pvp:match/end
execute as @a[tag=pp.in_match,!tag=pp.is_dead] if predicate party_pvp:below_death_line run function party_pvp:combat/handle_death
scoreboard players remove @a[tag=pp.in_match,scores={pp.kb.attacker_timer=1..}] pp.kb.attacker_timer 1
scoreboard players set @a[tag=pp.in_match,scores={pp.kb.attacker_timer=..0}] pp.kb.last_attacker -1
