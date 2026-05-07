# 設定値を初期値に戻す
data modify storage party_pvp:config match_duration_seconds set value 180
data modify storage party_pvp:config item_box_respawn_seconds set value 15
data modify storage party_pvp:config event_interval_seconds set value 45
data modify storage party_pvp:config kill_score set value 2
data modify storage party_pvp:config death_penalty set value -1
data modify storage party_pvp:config kill_attribution_seconds set value 3
data modify storage party_pvp:config respawn_invincible_ticks set value 20
tellraw @a "設定値を初期化しました"