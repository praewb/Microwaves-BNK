
-- moving background --
-- require: background image1 and flip version of background
local library = {}
local animate = {}
local centerX = display.contentCenterX
local centerY = display.contentCenterY

microWalksizes = {}
microWalksizes.width = 125
microWalksizes.height = 125
microWalksizes.numFrames = 6
microWalksheet = graphics.newImageSheet("microWalksheet.png", microWalksizes)

microAnimation = {}
microAnimation.name = "microWalk"
microAnimation.start = 1
microAnimation.count = 6
microAnimation.loopCount = 0
microAnimation.time = 500

function animate.Walking() 
microWalk = display.newSprite(microWalksheet, microAnimation)
microWalk.y = 275
microWalk.x = 50
microWalk.xScale = -1
microWalk:play()
return microWalk
end

function animate.Jumping()
microJump = 
microJump.x = microJump.x
microJump.y = microWalk.y
microJump.xScale = -1
microJump:play()
return microJumo
end
return animate
