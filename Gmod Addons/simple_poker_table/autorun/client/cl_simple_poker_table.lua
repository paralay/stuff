include("autorun/sh_simple_poker_table.lua")
local Frame = vgui.Create( "DFrame" )
Frame:SetPos( 5, 5 ) 
Frame:SetSize( 3000, 1500 ) 
Frame:SetTitle( "poker" ) 
Frame:SetVisible( true ) 
Frame:SetDraggable( false ) 
Frame:ShowCloseButton( false ) 
Frame:MakePopup()