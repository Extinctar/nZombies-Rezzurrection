//Main Text
surface.CreateFont( "nz.display.hud.main", {
	font = "Call Of Ops Duty", //Avenir Next
	size = 48,
	weight = 300,
	antialias = true,
} )

surface.CreateFont( "nz.display.hud.small", {
	font = "COMIC", //Avenir Next
	extended = true,
	size = 35,
	weight = 300,
	antialias = true,
} )

surface.CreateFont( "nz.display.hud.medium", {
	font = "Comic Sans", //Avenir Next
	extended = true,
	size = 54,
	weight = 300,
	antialias = true,
} )

surface.CreateFont( "nz.display.hud.points", {
	font = "Comic Sans",
	extended = true,
	size = 20,
	weight = 5000,
	antialias = true,
} )

surface.CreateFont( "nz.display.hud.ammo", {
	font = "Comic Sans",
	size = 60,
	weight = 50,
	antialias = true,
} )

surface.CreateFont( "nz.display.hud.ammo2", {
	font = "Comic Sans",
	size = 30,
	weight = 50,
	antialias = true,
} )

surface.CreateFont( "nz.display.hud.ammo3", {
	font = "Comic Sans",
	size = 20,
	weight = 50,
	antialias = true,
} )

surface.CreateFont( "nz.display.hud.ammo4", {
	font = "Comic Sans",
	size = 15,
	weight = 50,
	antialias = true,
} )

surface.CreateFont( "nz.display.hud.smaller", {
	font = "Comic Sans", //Avenir Next
	extended = true,
	size = 36,
	weight = 300,
	antialias = true,
} )

surface.CreateFont( "nz.display.hud.rounds", {
	font = "DK Umbilical Noose2", //Avenir Next
	extended = true,
	size = 400,
	weight = 30,
	antialias = true,
} )

-- Rotated text function, as taken from the gmod wiki
local matscale = Vector(1,1,1)
function draw.TextRotatedScaled( text, x, y, color, font, ang, scaleX, scaleY )
	render.PushFilterMag( TEXFILTER.ANISOTROPIC )
	render.PushFilterMin( TEXFILTER.ANISOTROPIC )
	surface.SetFont( font )
	surface.SetTextColor( color )
	surface.SetTextPos( 0, 0 )
	local textWidth, textHeight = surface.GetTextSize( text )
	local rad = -math.rad( ang )
	x = x - ( math.cos( rad ) * textWidth / 2 + math.sin( rad ) * textHeight / 2 )
	y = y + ( math.sin( rad ) * textWidth / 2 + math.cos( rad ) * textHeight / 2 )
	local m = Matrix()
	m:SetAngles( Angle( 0, ang, 0 ) )
	m:SetTranslation( Vector( x, y, 0 ) )
	matscale.x = scaleX
	matscale.y = scaleY
	m:Scale(matscale)
	cam.PushModelMatrix( m )
		surface.DrawText( text )
	cam.PopModelMatrix()
	render.PopFilterMag()
	render.PopFilterMin()
end
