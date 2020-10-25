game = require("game")

--[[]]
a = game.newGame("Super Metroid", 1350, 3)
b = game.newGame("Shrek Super Slam", 965, 1)
a2 = game.newGame("Super Metroid", 1350, 3)

print("a==b: " .. tostring(a == b))
print("a==a2: " .. tostring(a == a2))
print(a.filename)
print( b ) -- aka print(tostring(b))
--]]