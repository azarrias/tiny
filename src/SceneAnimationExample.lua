SceneAnimationExample = Class{__includes = tiny.Scene}

-- Sprite sheet by Balmer (https://opengameart.org/users/balmer)
local spriteSheet = love.graphics.newImage('assets/player/player-spritemap-v9.png')
local playerAnimationFrames = 8
local playerAnimationQuads = GenerateQuads(spriteSheet, 1, playerAnimationFrames, 
  tiny.Vector2D(46, 50), tiny.Vector2D(0, 150))

function SceneAnimationExample:init()
  self.player = self:CreatePlayer()
end

function SceneAnimationExample:update(dt)
  self.player:update(dt)
end

function SceneAnimationExample:render()
  self.player:render()
end

function SceneAnimationExample:CreatePlayer()
  -- Create game entity in the middle of the screen
  local playerScale = 4
  local player = tiny.Entity(love.graphics.getWidth() / 2, love.graphics.getHeight() / 2, 
    0, playerScale, playerScale)
  
  -- Sprite component
  local playerSprite = tiny.Sprite(spriteSheet, playerAnimationQuads[1])
  player:AddComponent(playerSprite)
  
  -- Create animator controller
  local playerAnimatorController = tiny.AnimatorController('PlayerAnimatorController')
  player:AddComponent(playerAnimatorController)
  
  -- Create animation
  local movingFrameDuration = 0.1
  local statePlayerRunning = playerAnimatorController:AddAnimation('PlayerRunning')
  for i = 1, playerAnimationFrames do
    statePlayerRunning.animation:AddFrame(spriteSheet, playerAnimationQuads[i], movingFrameDuration)
  end
  
  return player
end
