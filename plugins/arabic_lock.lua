
antiarabic = {}-- An empty table for solving multiple kicking problem

do
local function run(msg, matches)
  if is_momod(msg) then -- Ignore mods,owner,admins
    return
  end
  local data = load_data(_config.moderation.data)
  if data[tostring(msg.to.peer_id)]['settings']['lock_arabic'] then
    if data[tostring(msg.to.peer_id)]['settings']['lock_arabic'] == 'yes' then
      if antiarabic[msg.from.peer_id] == true then 
        return
      end
      send_large_msg("chat#id".. msg.to.peer_id , "Arabic is not allowed here")
      local name = user_print_name(msg.from)
      savelog(msg.to.peer_id, name.." ["..msg.from.peer_id.."] kicked (arabic was locked) ")
      chat_del_user('chat#id'..msg.to.peer_id,'user#id'..msg.from.peer_id,ok_cb,false)
		  antiarabic[msg.from.peer_id] = true
      return
    end
  end
  return
end
local function cron()
  antiarabic = {} -- Clear antiarabic table 
end
return {
  patterns = {
    "([\216-\219][\128-\191])"
    },
  run = run,
	cron = cron
}

end
