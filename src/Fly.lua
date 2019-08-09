--[[
    GD50
    Super Mario Bros. Remake

    -- Snail Class --

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

Fly = Class{__includes = Entity}

function Fly:init(def)
    Entity.init(self, def)
end

function Fly:render()
    love.graphics.draw(gTextures[self.texture], gFrames[self.texture][self.currentAnimation:getCurrentFrame()],
        math.floor(self.x) + 8, math.floor(self.y) + 8, 0, self.direction == 'left' and 1 or -1, 1, 8, 10)
end
