gamemode adventure @s
tp @s 0 80 0
tag @s remove pp.is_dead
tag @s add pp.invincible
schedule function party_pvp:combat/remove_invincible 20t