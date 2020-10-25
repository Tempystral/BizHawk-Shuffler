game = require("game")

--[[]]
a = game.newGame("filename a", 1, 2)
b = game.newGame("file b", 10, 20)
a2 = game.newGame("filename a", 1, 2)
--a = Game:create{filename="a", playtime="1", playcount="2"}
--b = Game:create{filename="b", playtime="10", playcount="20"}
--a2 = Game:create{filename="a", playtime="1", playcount="2"}

print("a==b", a == b)
print(a == a2)
print(a2 == a)
print(a.filename)
print(tostring(a))
--]]