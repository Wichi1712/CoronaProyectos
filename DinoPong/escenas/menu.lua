local composer = require ("composer")
local scene = composer.newScene()
--local sonido = audio.loadSound("musica.mp3")

-- ----------------------------------------------------
-- El código fuera de las funciones de eventos de escena a continuación solo se
-- ejecutará UNA VEZ a menos que la escena se elimina por completo (no se recicla) a través de "composer.removeScene ()"
-- --------------------------------------------------------------------------

local function gotoGame()
  --la escena "game" se encuentra en la carpeta escenas
    composer.gotoScene( "escenas.game" )
end
 
local function gotoHighScores()
    composer.gotoScene( "highscores" )
end


------------------------------------------------------------

--create()
function scene:create(event)
  local sceneGroup = self.view
  
  local fondo = display.newImage(sceneGroup,"Assets/fondo.png")
  fondo.x = display.contentCenterX
  fondo.y = display.contentCenterY
  --audio.play(sonido)
  
  local title = display.newImageRect( sceneGroup, "Assets/title.png", 300, 80 )
	title.x = display.contentCenterX
	title.y = 200
  
  local playButton = display.newText( sceneGroup, "Play", display.contentCenterX, 300, native.systemFont, 44 )
  playButton:setFillColor( 0, 0, 0 )
 
  local highScoresButton = display.newText( sceneGroup, "High Scores", display.contentCenterX, 350, native.systemFont, 44 )
  highScoresButton:setFillColor( 0, 0, 0 )
  
  --Acciones de boton
  playButton:addEventListener( "tap", gotoGame ) --llama a la funcion gotoGame
  highScoresButton:addEventListener( "tap", gotoHighScores )
  
end





-- show()
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is still off screen (but is about to come on screen)

	elseif ( phase == "did" ) then
		-- Code here runs when the scene is entirely on screen

	end
end


-- hide()
function scene:hide( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is on screen (but is about to go off screen)

	elseif ( phase == "did" ) then
		-- Code here runs immediately after the scene goes entirely off screen

	end
end


-- destroy()
function scene:destroy( event )

	local sceneGroup = self.view
	-- Code here runs prior to the removal of scene's view

end

scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)


return scene