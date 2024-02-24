local function OpenCookingPanel()
    local frame = vgui.Create("DFrame")
    frame:SetSize(400, 300)
    frame:SetTitle("Cooking Panel")
    frame:Center()
    frame:MakePopup()

    local cookButton1 = vgui.Create("DButton", frame)
    cookButton1:SetText("Cook Pizza")
    cookButton1:SetPos(20, 50)
    cookButton1:SetSize(150, 30)
    cookButton1.DoClick = function()
        print("Pizza is cooking!")
    end

    local cookButton2 = vgui.Create("DButton", frame)
    cookButton2:SetText("Bake Cake")
    cookButton2:SetPos(20, 100)
    cookButton2:SetSize(150, 30)
    cookButton2.DoClick = function()
        print("Cake is baking!")
    end

    local cookButton3 = vgui.Create("DButton", frame)
    cookButton3:SetText("Fry Eggs")
    cookButton3:SetPos(20, 150)
    cookButton3:SetSize(150, 30)
    cookButton3.DoClick = function()
        print("Eggs are frying!")
    end

    local closeButton = vgui.Create("DButton", frame)
    closeButton:SetText("Close")
    closeButton:SetPos(20, 250)
    closeButton:SetSize(150, 30)
    closeButton.DoClick = function()
        frame:Close()
    end
end

-- Commande de console pour ouvrir le panneau de cuisine
concommand.Add("open_cooking_panel", function()
    OpenCookingPanel()
end)
