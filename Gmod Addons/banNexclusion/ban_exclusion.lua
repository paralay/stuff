-- Liste des joueurs bannis
local bannedPlayers = {}

-- Liste des joueurs exclus
local excludedPlayers = {}

-- Fonction pour bannir un joueur
local function BanPlayer(ply)
    local steamID = ply:SteamID()
    table.insert(bannedPlayers, steamID)

    -- Message de bannissement
    ply:Kick("Vous avez été banni du serveur.")
end

-- Fonction pour exclure un joueur
local function ExcludePlayer(ply)
    local steamID = ply:SteamID()
    table.insert(excludedPlayers, steamID)

    -- Message d'exclusion
    ply:Kick("Vous avez été exclu du serveur.")
end

-- Fonction pour créer le menu
local function CreateBanExclusionMenu()
    local frame = vgui.Create("DFrame")
    frame:SetSize(300, 150)
    frame:SetTitle("Ban/Exclude Menu")
    frame:Center()
    frame:MakePopup()

    local banButton = vgui.Create("DButton", frame)
    banButton:SetText("Ban Player")
    banButton:SetPos(50, 50)
    banButton:SetSize(200, 30)
    banButton.DoClick = function()
        local selectedPlayer = player.GetByID(playerSelect:GetSelectedLine())
        if IsValid(selectedPlayer) then
            BanPlayer(selectedPlayer)
            frame:Close()
        end
    end

    local excludeButton = vgui.Create("DButton", frame)
    excludeButton:SetText("Exclude Player")
    excludeButton:SetPos(50, 90)
    excludeButton:SetSize(200, 30)
    excludeButton.DoClick = function()
        local selectedPlayer = player.GetByID(playerSelect:GetSelectedLine())
        if IsValid(selectedPlayer) then
            ExcludePlayer(selectedPlayer)
            frame:Close()
        end
    end

    local playerSelect = vgui.Create("DListView", frame)
    playerSelect:SetPos(50, 20)
    playerSelect:SetSize(200, 20)
    playerSelect:AddColumn("Players")

    for _, ply in pairs(player.GetAll()) do
        playerSelect:AddLine(ply:Nick())
    end
end

-- Commande de console pour ouvrir le menu
concommand.Add("open_ban_exclude_menu", function()
    CreateBanExclusionMenu()
end)