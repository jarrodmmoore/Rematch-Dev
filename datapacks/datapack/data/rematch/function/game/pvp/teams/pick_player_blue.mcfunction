#pick a random player who requested this team
tag @a[tag=requestBlueTeam,tag=!teamassigned,sort=random,limit=1,team=!spectators] add ichooseyou

#nobody left who requested? pick a neutral player.
execute unless entity @a[tag=ichooseyou] run tag @a[tag=!requestRedTeam,tag=!requestBlueTeam,tag=!teamassigned,sort=random,limit=1,team=!spectators] add ichooseyou

#no neutral players left? pick someone who wanted the other team.
execute unless entity @a[tag=ichooseyou] run tag @a[tag=requestRedTeam,tag=!teamassigned,sort=random,limit=1,team=!spectators] add ichooseyou


#now give the chosen player all the proper stuff..
tag @a[tag=ichooseyou] remove requestBlueTeam
tag @a[tag=ichooseyou] add teamassigned
team join blueplayers @a[tag=ichooseyou]
function rematch:text/pvp/team_assign_blue
tag @a[tag=ichooseyou] remove ichooseyou


#still players that haven't been assigned? run pick_player_red.
execute if entity @a[tag=!teamassigned,team=!spectators] run function rematch:game/pvp/teams/pick_player_red