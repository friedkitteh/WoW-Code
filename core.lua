PetName:Hide()
PetFrame:ClearAllPoints()
PetFrame:SetPoint("CENTER",PlayerFrame,"CENTER" ,-145,20)
PetFrame.SetPoint=function()end
RuneFrame:ClearAllPoints()
RuneFrame:SetPoint("CENTER",PlayerFrame,"CENTER", 195,15)
RuneFrame.SetPoint=function()end
MageArcaneChargesFrame:ClearAllPoints()
MageArcaneChargesFrame:SetPoint("CENTER",PlayerFrame,"CENTER" ,-145,20)
--PetFrame.SetPoint = function() end
TargetFrameToT:ClearAllPoints();TargetFrameToT:SetPoint("CENTER",TargetFrame,"Center",75,-50)
FocusFrameToT:ClearAllPoints()
FocusFrameToT:SetPoint("CENTER",FocusFrame,"Center",75,-50)
MainMenuBarArtFrame.LeftEndCap:Hide()
MainMenuBarArtFrame.RightEndCap:Hide()
BuffFrame:SetScale(1.1)

SpellActivationOverlayFrame:SetScale(0.7)

function Movebuff()
BuffFrame:ClearAllPoints()
BuffFrame:SetScale(1.1)
BuffFrame:SetPoint("CENTER",PlayerFrame,"CENTER",-50,200)
end
hooksecurefunc("BuffFrame_UpdateAllBuffAnchors",Movebuff) Movebuff()

function md() 
local b = DebuffButton1
 if b then 
 b:ClearAllPoints() 
 b:SetPoint("CENTER",PlayerFrame,"CENTER",840,115) 
 return b 
 end 
 end
 md()
hooksecurefunc("BuffFrame_UpdateAllBuffAnchors", md) md()

-- MainMenuBar:SetScale(1.07)
MultiBarBottomLeft:ClearAllPoints()
MultiBarBottomLeft:SetPoint("CENTER",1,85)
MultiBarBottomLeft.SetPoint = function() end
ActionButton1:ClearAllPoints()
ActionButton1:SetPoint("cENTER",-230,42)
ActionButton1.SetPoint = function() end
MultiBarBottomRight:ClearAllPoints()
MultiBarBottomRight:SetPoint("CENTER",2,124)
MultiBarBottomRight.SetPoint = function() end
MainMenuBarArtFrameBackground:Hide()
ActionBarUpButton:ClearAllPoints()
ActionBarUpButton:SetPoint("CENTER",650,-15)
MainMenuBarArtFrame.PageNumber:Hide()


StatusTrackingBarManager:Hide()
GuildMicroButtonAlert:Hide()


PetActionBarFrame:ClearAllPoints()
PetActionBarFrame:SetScale(1)

-- PetActionBarFrame:SetPoint("RIGHT", UIParent, "CENTER", 290, -480)
PetActionBarFrame:SetPoint("RIGHT", UIParent, "CENTER", 290, -360)
PetActionBarFrame.SetPoint=function()end

CharacterBag3Slot:Hide()
CharacterBag2Slot:Hide()
CharacterBag1Slot:Hide()
CharacterBag0Slot:Hide()
MicroButtonAndBagsBar.MicroBagBar:Hide()
-- MultiBarBottomLeftButton1FloatingBG:Hide()
-- ActionButton1NormalTexture:Hide()

CastingBarFrame:ClearAllPoints()
CastingBarFrame:SetPoint("CENTER", UIParent, "CENTER", 0,-320)
CastingBarFrame.SetPoint=function()end

function UABA() bn="BuffButton" for i=1,BUFF_ACTUAL_DISPLAY do x=_G[bn..i] if i>1 then x:ClearAllPoints() if mod(i,8)==1 then x:SetPoint("TOP",_G[bn..(i-8)],"BOTTOM",0,-15) else x:SetPoint("LEFT",pb,"RIGHT",5,0) end end pb=x end end
hooksecurefunc("BuffFrame_UpdateAllBuffAnchors",UABA)


local U=UnitIsUnit hooksecurefunc("CompactUnitFrame_UpdateName",function(F)if IsActiveBattlefieldArena()and F.unit:find("nameplate")then for i=1,5 do if U(F.unit,"arena"..i)then F.name:SetText(i)F.name:SetTextColor(1,1,0)break end end end end)


TotemFrame:ClearAllPoints(); TotemFrame:SetPoint("CENTER",UIParent,"CENTER",-625,205); TotemFrame:SetScale(0.9); TotemFrame.SetPoint = function() end


-- local GMBA = GuildMicroButtonAlert if GMBA:IsVisible() then GMBA:Hide end end 


-- cvars
SetCVar("nameplateMotion", 0)
SetCVar("nameplateOtherTopInset", -1)
SetCVar("nameplateOtherBottomInset", -1)
SetCVar("nameplateOverlapH", 1.1)
SetCVar("nameplateOverlapV", 1.1)
