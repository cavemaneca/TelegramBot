local function run(msg, matches)
  local data = load_data(_config.moderation.data)
   if msg.action and msg.action.peer_type then
   local action = msg.action.peer_type 
    if data[tostring(msg.to.peer_id)] then
      if data[tostring(msg.to.peer_id)]['settings'] then
        if data[tostring(msg.to.peer_id)]['settings']['leave_ban'] then 
          leave_ban = data[tostring(msg.to.peer_id)]['settings']['leave_ban']
        end
      end
    end
   if action == 'chat_del_user' and not is_momod2(msg.action.user.peer_id) and leave_ban == 'yes' then
     	local user_id = msg.action.user.peer_id
     	local chat_id = msg.to.peer_id
     	ban_user(user_id, chat_id)
     end
   end
  end


return {
  patterns = {
    "^!!tgservice (.*)$"
  },
  run = run
}
