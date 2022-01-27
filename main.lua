-- Piwel's Advanced Moderation System for BeamMP 1.0
function onInit()
    print("Advanced Moderation System 1.0 Ready")
    RegisterEvent("onPlayerAuth","onPlayerAuth")
end

function onPlayerAuth(name)  
    print("Checking banlist for", name)
	str = name -- Defines the username as the condition to search into the banlist
    if (string.find(str, "RandomSOS") or string.find(str, "LtPiwelAX")) then -- Temporary banlist
        return "You have been banned from the server."
    else
        print("All good, user clear to join.")
    end
end
