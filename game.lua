local plural = function(word, value)
  if value == 1 then
    return word
  else
    return word .. "s"
  end
end

-- Module
local game = {}

-- Data Model
game.Game = {
  --[[ This data model can be extended to contain any kind of data.
       For example, a lastInput field or lastTimeLimit field,
       to avoid serializing every detail.
    ]]
  filename = "";
  playtime = 0;
  playcount = 0;

}

local GameMetaTable = { -- Defines rules for how Game tables should behave.
  __eq = function(self, value) -- How to evaluate equality through == or ~=
    return self.filename == value.filename
       and self.playtime == value.playtime
       and self.playcount == value.playcount
  end;

  __tostring = function (self) -- How to serialize the format using print() or tostring()
      return "ROM: " .. self.filename ..
             " Played " .. self.playcount .. plural(" time", self.playcount) ..
             " for " .. self.playtime .. plural(" frame", self.playtime)
  end
}

function game.Game:create(obj) -- Creates a new table of type Game
  obj.parent = self
  return obj
end

function game.newGame(name, time, count)
  -- Convenience function for creating new Games
  local g = game.Game:create{filename=name, playtime=time, playcount=count}
  return setmetatable(g, GameMetaTable)
end

return game