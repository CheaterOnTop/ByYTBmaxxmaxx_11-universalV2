local function waitForGameLoad()
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
end

local function detectExecutor()
    return identifyexecutor and identifyexecutor() or 'Unknown'
end

local function splitString(str, delimiter)
    local result = {}
    for entry in str:gmatch("([^" .. delimiter .. "]+)") do
        table.insert(result, entry:match("^%s*(.-)%s*$")) 
    end
    return result
end

local advancedCache = { checked = false, supported = false }

local function checkAdvancedSupport()
    if advancedCache.checked then
        return advancedCache.supported
    end
    advancedCache.checked = true

    local gcSuccess, _ = pcall(getgc)
    if not gcSuccess then
        advancedCache.supported = false
        return false
    end

    local hookSuccess = pcall(hookfunction, print, function() end)
    if not hookSuccess then
        advancedCache.supported = false
        return false
    end

    advancedCache.supported = true
    return true
end

local function isExecutorBlacklisted(gameConfig)
    local executor = detectExecutor():lower()
    local unsupportedStr = gameConfig.unsupported or ''
    if unsupportedStr == '' then
        return false
    end

    local blacklist = splitString(unsupportedStr, ',')
    for _, name in ipairs(blacklist) do
        if string.find(executor, name:lower()) then
            return true
        end
    end
    return false
end

local function isFullySupported(gameConfig)
    if isExecutorBlacklisted(gameConfig) then
        return false
    end

    if gameConfig.Level_8 then
        return checkAdvancedSupport()
    end

    return true
end

local placeIdToGameKey = {
    [286090429] = 'arsenal',  
    [301549746] = 'counterblox',  
    [13253735473] = 'tridentsurvival',
    [13800223141] = 'lonesurvival',
    [139307005148921] = 'lonesurvival',
    [0] = 'universal'
}

local gameScripts = {
    ['arsenal'] = 'https://raw.githubusercontent.com/CheaterOnTop/ByYTBmaxxmaxx_11-universalV2/refs/heads/main/universal',
    ['tridentsurvival'] = 'https://raw.githubusercontent.com/CheaterOnTop/ByYTBmaxxmaxx_11-universalV2/refs/heads/main/tridentsurvival',
    ['lonesurvival'] = 'https://raw.githubusercontent.com/CheaterOnTop/ByYTBmaxxmaxx_11-universalV2/refs/heads/main/lonesurvival',
    ['universal'] = 'https://raw.githubusercontent.com/CheaterOnTop/ByYTBmaxxmaxx_11-universalV2/refs/heads/main/universal'  -- Integrated fallback
}

local statusConfigs = {
    ['counterblox'] = {
        name = 'Counter Blox',
        Level_8 = true, 
        unsupported = 'Solara, Xeno, JJsploit, Bunni.lol'
    },
    ['lonesurvival'] = {
        name = 'Lone Survival',
        Level_8 = true,
        unsupported = 'Solara, Xeno, JJsploit, Bunni.lol'
    },
    ['arsenal'] = {
        name = 'Arsenal',
        Level_8 = false,
        unsupported = 'JJsploit'
    },
    ['tridentsurvival'] = {
        name = 'Trident Survival',
        Level_8 = false,
        unsupported = 'JJsploit'
    },
    ['universal'] = {
        name = 'Universal Script',
        Level_8 = false,
        unsupported = 'JJsploit'
    }
}

waitForGameLoad()

local currentPlaceId = game.PlaceId
local currentGameKey = placeIdToGameKey[currentPlaceId] or 'universal' 
local currentExecutor = detectExecutor()
local config = statusConfigs[currentGameKey]

if isFullySupported(config) then    
    local success, err = pcall(function()
        if currentGameKey == 'counterblox' then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/CheaterOnTop/ByYTBmaxxmaxx_11-universalV2/refs/heads/main/Counter%20Blox%20Beta'))()
        else
            local url = gameScripts[currentGameKey]
            loadstring(game:HttpGet(url))()
        end
    end)
    
    if not success then
    end
else
    local reason = config.Level_8 and 'Advanced features missing' or 'Blacklisted executor'
end
