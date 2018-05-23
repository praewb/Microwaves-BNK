--BanaKnight Code
-- moving background --
-- require: background image1 and flip version of background

local animate = {}
local centerX = display.contentCenterX
local centerY = display.contentCenterY

--bg1 = display.newImage("trybg1.jpg", centerX, centerY)

 function animate.logoSetup(logoX, logoY, logoxScale, logoyScale)
  logoSizes = {}
  logoSizes.width = 150
  logoSizes.height = 150
  logoSizes.numFrames = 25
  logoSheet = graphics.newImageSheet("studio_logo.png", logoSizes)

  logoAnimation = {}
  logoAnimation.name = "showLogo"
  logoAnimation.start = 1
  logoAnimation.count = 25
  logoAnimation.loopCount = 1
  logoAnimation.time = 2000

  logoAnimations = {}
  logoAnimations[1] = logoAnimation
  
  logoAnimated = display.newSprite(logoSheet, logoAnimations)
  logoAnimated.y = logoY
  logoAnimated.x = logoX
  logoAnimated.yScale = logoyScale
  logoAnimated.xScale = logoxScale
  
  function changeLogo (event)
    if event.phase == "ended" then
      newLogo = display.newImage("logoSimple.png", logoAnimated.x, logoAnimated.y)
      end
    end
  logoAnimated:addEventListener("sprite", changeLogo)
end

function animate.spoonTrapSetup(spoonTrapX, spoonTrapY, spoonTrapxScale, spoonTrapyScale)
  spoonTrapsizes =  {}
  spoonTrapsizes.width = 32
  spoonTrapsizes.height = 32
  spoonTrapsizes.numFrames = 2
  spoonTrapsheet = graphics.newImageSheet("Spoon.png", spoonTrapsizes)

  spoonTrapAnimation = {}
  spoonTrapAnimation.name = "spoon"
  spoonTrapAnimation.start = 1
  spoonTrapAnimation.count = 2
  spoonTrapAnimation.loopCount = 0
  spoonTrapAnimation.time = 800

  spoonTrapAnimations = {}
  spoonTrapAnimations[1] = spoonTrapAnimation

  spoonTrapAnimated = display.newSprite(spoonTrapsheet, spoonTrapAnimations)
  spoonTrapAnimated.y = spoonTrapY
  spoonTrapAnimated.x = spoonTrapX
  spoonTrapAnimated.yScale = spoonTrapyScale
  spoonTrapAnimated.xScale = - spoonTrapxScale
  
end



function animate.forkTrapSetup(forkTrapX, forkTrapY, forkTrapxScale, forkTrapyScale)
  forkTrapsizes =  {}
  forkTrapsizes.width = 32
  forkTrapsizes.height = 32
  forkTrapsizes.numFrames = 2
  forkTrapsheet = graphics.newImageSheet("fork.png", forkTrapsizes)

  forkTrapAnimation = {}
  forkTrapAnimation.name = "fork"
  forkTrapAnimation.start = 1
  forkTrapAnimation.count = 2
  forkTrapAnimation.loopCount = 0
  forkTrapAnimation.time = 800

  forkTrapAnimations = {}
  forkTrapAnimations[1] = forkTrapAnimation

  forkTrapAnimated = display.newSprite(forkTrapsheet, forkTrapAnimations)
  forkTrapAnimated.y = forkTrapY
  forkTrapAnimated.x = forkTrapX
  forkTrapAnimated.yScale = forkTrapyScale
  forkTrapAnimated.xScale = - forkTrapxScale
  
end

 function animate.microAnimationSetup(microX, microY, microxScale, microyScale)
  microsizes = {}
  microsizes.width = 79
  microsizes.height = 70
  microsizes.numFrames = 20
  microsheet = graphics.newImageSheet("microSheet.png", microsizes)

  microWalkAnimation = {}
  microWalkAnimation.name = "microWalk"
  microWalkAnimation.start = 15
  microWalkAnimation.count = 6
  microWalkAnimation.loopCount = 0
  microWalkAnimation.time = 850

  microJumpAnimation = {}
  microJumpAnimation.name = "microJump"
  microJumpAnimation.start = 8
  microJumpAnimation.count = 7
  microJumpAnimation.loopCount = 0
  microJumpAnimation.time = 850

  microAttackAnimation = {}
  microAttackAnimation.name = "microAttack"
  microAttackAnimation.start = 1
  microAttackAnimation.count = 7
  microAttackAnimation.loopCount = 0
  microAttackAnimation.time = 850

  animations = {}
  animations[1] = microWalkAnimation
  animations[2] = microJumpAnimation
  animations[3] = microAttackAnimation


  microAnimated = display.newSprite(microsheet, animations)
  microAnimated.y = microY
  microAnimated.x = microX
  microAnimated.yScale = microyScale
  microAnimated.xScale = - microxScale
  
end

function animate.Animation (nameAnimation,nameAction)
  nameAnimation:setSequence(nameAction)
  nameAnimation:play()
  
end

function animate.titleTrapSetup(titleTrapX, titleTrapY, titlexScale, titleyScale)
  titlesizes =  {}
  titlesizes.width = 32
  titlesizes.height = 32
  titlesizes.numFrames = 7
  titleSheet = graphics.newImageSheet("ML.png", titlesizes)

  titleAnimation = {}
  titleAnimation.name = "move"
  titleAnimation.start = 1
  titleAnimation.count = 7
  titleAnimation.loopCount = 0
  titleAnimation.time = 800

  titleAnimations = {}
  titleAnimations[1] = titleAnimation

  titleAnimated = display.newSprite(titleLSheet, titleAnimations)
  titleAnimated.y = titleTrapY
  titleAnimated.x = titleTrapX
  titleAnimated.yScale = titleyScale
  titleAnimated.xScale = - titlexScale
  
end

function animate.fireTrapSetup(fireTrapX, fireTrapY, fireTrapxScale, fireTrapyScale)
  fireTrapsizes =  {}
  fireTrapsizes.width = 32
  fireTrapsizes.height = 32
  fireTrapsizes.numFrames = 13
  fireTrapsheet = graphics.newImageSheet("fireTrap.png", fireTrapsizes)

  fireTrapAnimation = {}
  fireTrapAnimation.name = "fire"
  fireTrapAnimation.start = 1
  fireTrapAnimation.count = 13
  fireTrapAnimation.loopCount = 0
  fireTrapAnimation.time = 800

  fireTrapAnimations = {}
  fireTrapAnimations[1] = fireTrapAnimation

  fireTrapAnimated = display.newSprite(fireTrapsheet, fireTrapAnimations)
  fireTrapAnimated.y = fireTrapY
  fireTrapAnimated.x = fireTrapX
  fireTrapAnimated.yScale = fireTrapyScale
  fireTrapAnimated.xScale = - fireTrapxScale
  
end

function animate.destroyObject(object)
  object:removeSelf()
  object = nil
  
end

function animate.backgroundChange(xBorder,currentBg, nextBg, playerX, playerXnew)
  if playerX >= xBorder then
    destroyObject(currentBg)
    display.newImage(nextBg, currentBg.x, currentBg.y)
    playerX = playerXnew
    
  end
end

--function animate.touch(event)
--  buttonPressed = event.target
--  touchX = event.x
--  touchY = event.y
--  if event.phase == "began" then
--    print("X: " .. touchX .. " Y: " .. touchY)
--  elseif event.phase == "ended" then 
--  end
--end

--microAnimationSetup()
--fireTrapSetup()

--Animation(microAnimated,"microWalk")
--Animation(microAnimated,"microJump")
--Animation(microAnimated,"microAttack")

--Animation(fireTrapAnimated,"fire" )

--backgroundChange(bg1, "trybg2.jpg", microAnimated.x, microAnimated.y)


--Runtime:addEventListener( "touch", touch )

return animate