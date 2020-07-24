--[[
    Example code for the tiny package
  ]]

-- Libs
-- (Class must be defined before requiring the tiny package)
Class = require '3rdparty.class'
tiny = require 'tiny'

-- Require code from the example scenes
require 'util'
require 'SceneAnimationExample'

function love.load()
  -- Set up window
  love.window.setMode(1280, 720)
  love.window.setTitle("tiny package Examples")

  scenes = {
    ['animation'] = function() return SceneAnimationExample() end
  }
  sceneManager = tiny.SceneManager(scenes)
  sceneManager:change('animation')
end

function love.update(dt)
  sceneManager:update(dt)
end

function love.draw()
  sceneManager:render()
end
