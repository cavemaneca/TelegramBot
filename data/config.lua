do local _ = {
  about_text = "Teleseed v2 - Open Source\nAn advance Administration bot based on yagop/telegram-bot \n\nhttps://github.com/SEEDTEAM/TeleSeed\n\nAdmins\n@iwals [Founder]\n@imandaneshi [Developer]\n@Rondoozle [Developer]\n@seyedan25 [Manager]\n\nSpecial thanks to\nawkward_potato\nSiyanew\ntopkecleon\nVamptacus\n\nOur channels\n@teleseedch [English]\n@iranseed [persian]\n",
  disabled_channels = {},
  enabled_plugins = {
    "onservice",
    "inrealm",
    "ingroup",
    "inpm",
    "banhammer",
    "stats",
    "anti_spam",
    "owners",
    "arabic_lock",
    "set",
    "get",
    "broadcast",
    "download_media",
    "invite",
    "all",
    "leave_ban",
    "isup"
  },
  help_text = "Commands list :\n\n!kick [username|id]\nYou can also do it by reply\n\n!ban [ username|id]\nYou can also do it by reply\n\n!unban [id]\nYou can also do it by reply\n\n!who\nMembers list\n\n!modlist\nModerators list\n\n!promote [username]\nPromote someone\n\n!demote [username]\nDemote someone\n\n!kickme\nWill kick user\n\n!about\nGroup description\n\n!setphoto\nSet and locks group photo\n\n!setname [name]\nSet group name\n\n!rules\nGroup rules\n\n!id\nreturn group id or user id\n\n!help\n\n!lock [member|name|bots|leave]\9\nLocks [member|name|bots|leaveing] \n\n!unlock [member|name|bots|leave]\nUnlocks [member|name|bots|leaving]\n\n!set rules <text>\nSet <text> as rules\n\n!set about <text>\nSet <text> as about\n\n!settings\nReturns group settings\n\n!newlink\ncreate/revoke your group link\n\n!link\nreturns group link\n\n!owner\nreturns group owner id\n\n!setowner [id]\nWill set id as owner\n\n!setflood [value]\nSet [value] as flood sensitivity\n\n!stats\nSimple message statistics\n\n!save [value] <text>\nSave <text> as [value]\n\n!get [value]\nReturns text of [value]\n\n!clean [modlist|rules|about]\nWill clear [modlist|rules|about] and set it to nil\n\n!res [username]\nreturns user id\n\"!res @username\"\n\n!log\nwill return group logs\n\n!banlist\nwill return group ban list\n\n**U can use both \"/\" and \"!\" \n\n\n*Only owner and mods can add bots in group\n\n\n*Only moderators and owner can use kick,ban,unban,newlink,link,setphoto,setname,lock,unlock,set rules,set about and settings commands\n\n*Only owner can use res,setowner,promote,demote and log commands\n\n",
  help_text_realm = "Realm Commands:\n\n!creategroup [Name]\nCreate a group\n\n!createrealm [Name]\nCreate a realm\n\n!setname [Name]\nSet realm name\n\n!setabout [GroupID] [Text]\nSet a group's about text\n\n!setrules [GroupID] [Text]\nSet a group's rules\n\n!lock [GroupID] [setting]\nLock a group's setting\n\n!unlock [GroupID] [setting]\nUnock a group's setting\n\n!wholist\nGet a list of members in group/realm\n\n!who\nGet a file of members in group/realm\n\n!type\nGet group type\n\n!kill chat [GroupID]\nKick all memebers and delete group\n\n!kill realm [RealmID]\nKick all members and delete realm\n\n!addadmin [id|username]\nPromote an admin by id OR username *Sudo only\n\n!removeadmin [id|username]\nDemote an admin by id OR username *Sudo only\n\n!list groups\nGet a list of all groups\n\n!list realms\nGet a list of all realms\n\n!log\nGrt a logfile of current group or realm\n\n!broadcast [text]\n!broadcast Hello !\nSend text to all groups\nOnly sudo users can run this command\n\n!br [group_id] [text]\n!br 123456789 Hello !\nThis command will send text to [group_id]\n\n\n**U can use both \"/\" and \"!\" \n\n\n*Only admins and sudo can add bots in group\n\n\n*Only admins and sudo can use kick,ban,unban,newlink,setphoto,setname,lock,unlock,set rules,set about and settings commands\n\n*Only admins and sudo can use res, setowner, commands\n",
  moderation = {
    data = "data/moderation.json"
  },
  sudo_users = {
    146252205, --myself
    --133710046, --nord
    151462131, --bob
    144584416, --neet
    149943811, --phillip
    156272046, --link yuki
    --167420918, --susan 
    145887934, --sammy
    60330572,  --Suraku
    141385377, --ThatGuy
    0,
    0 -- sudo service redis-server start
  }
}
return _
end
