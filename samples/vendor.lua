-- wip
-- I will work on this later (i swear)
-- Will be used for my Sitefunds Addon :) 
-- To Do: Make a list of each item (preferablly 4 or so) with each item being crossed off w/ a red line saying 'INSUFFICIENT FUNDS' if they do not meet the required site funds. (scrollwheel type list)
-- Theme it off of either Combine or SCP
-- Make a skin for the theme
-- Have buttons emit noises and give the lp whichever item they request
-- Have each button draw a model above the button itself to view the item (for armor and health use health and armor vials respectively)
-- Other Features are TBD :)

require "3d2dvgui"

local tr = LocalPlayer():GetEyeTrace()
local pos = tr.HitPos + tr.HitNormal * 4
local ang = tr.HitNormal:Angle()
ang:RotateAroundAxis( ang:Up(), 90 )
ang:RotateAroundAxis( ang:Forward() * -1, -90 )

local vend = vgui.Create( "DFrame" )
vend:SetPos( 0, 0 )
vend:SetSize( 200, 250 )
vend:SetTitle( "Vendor" )

hook.Add( "PostDrawOpaqueRenderables", "Vendor", function()
	vgui.Start3D2D( pos, ang, 1 )
		vend:Paint3D2D()
	vgui.End3D2D() 
end )
