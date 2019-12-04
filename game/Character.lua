Character = Class{}

SPY = 11
NEUTRAL_A = 5 -- neutral character a
NEUTRAL_B = 7 -- neutral character b, etc
NEUTRAL_C = 9
BAD_A = 1
BAD_B = 3

npcY = 106

function Character:init(x, spriteID, dialogueOptions)
    -- TODO generate all characters in the map
    self.spritesheet = love.graphics.newImage('graphics/npcs.png')
    self.sprites = generateQuads(self.spritesheet, 16, 20)

    self.sprite = self.sprites[spriteID]
    self.x = x
    self.dialogue = dialogueOptions

    self.npcWidth = 16
    self.npcHeight = 20
    self.npcs = {}
end

function Character:displayDialogue()
    self.speechBubble = true
end

function Character:update(dt)
    -- find some way to determine when to disable speech bubble
    self.speechBubble = false
end

function Character:render()

    if self.speechBubble then
        -- draw speech bubble image next to character
        -- render dialogue inside speech bubble
    end

    love.graphics.draw(self.spritesheet, self.sprite, self.x, 90)
    
end