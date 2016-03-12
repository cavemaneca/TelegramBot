do
-- Will leave the group if be added
local function run(msg, matches)
local bot_id = our_id -- your bot id
   -- like local bot_id = 1234567
    if matches[1] == 'leave' and is_admin(msg) then
       chat_del_user("chat#id"..msg.to.peer_id, 'user#id'..bot_id, ok_cb, false)
    elseif msg.action.peer_type == "chat_add_user" and msg.action.user.peer_id == tonumber(bot_id) and not is_sudo(msg) then
      send_large_msg("chat#id"..msg.to.peer_id, 'this is not one of my groups.', ok_cb, false)
      chat_del_user("chat#id"..msg.to.peer_id, 'user#id'..bot_id, ok_cb, false)
      block_user("user#id"..msg.from.peer_id,ok_cb,false)
    end
end
 
return {
  patterns = {
    "^[!/](leave)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
end
