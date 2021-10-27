StealthWithRandoms = {}

function StealthWithRandoms.kickPlayer(number)
    local session = managers.network:session()
    local peer = session:peer(number)
    if not peer then return end
    session:send_to_peers("kick_peer", peer:id(), 0)
    session:on_peer_kicked(peer, peer:id(), 0)
end

function StealthWithRandoms.sendChatMessage(message)
    managers.chat:send_message(1, managers.network.account:username(), message)
end

function StealthWithRandoms.sendWarningMessage()
    local message = "\"Stealth With Randoms\" mod: If a player does not know the mission well enough or if he triggers the alarm, he may be kicked quickly using a keyboard shortcut."
    StealthWithRandoms.sendChatMessage(message)
end