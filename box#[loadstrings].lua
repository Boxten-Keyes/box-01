--[[---------------------------------------------------------------------------------------------------------------------------

NOXIOUS HUB LOADERS

---------------------------------------------------------------------------------------------------------------------------]]--

-- DANDY'S WORLD [MAIN]
function grs(l) local chars = {"▓", "▒", "░"};local result = "";for i = 1, l do local rndi = math.random(1, #chars);result = result .. chars[rndi];end;return result end
function ctc(txt) LOLOL = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set); if LOLOL then LOLOL(tostring(txt)) end end
a = "https://"
b, c = "raw.", "githubusercontent.com"
d, e, f = "Boxten-Keyes", "box-01", "refs/heads/main"
g = "box%23%5Bnoxious%20hub%3A%20dandy's%20world%5D/box%23%5Bmain%5D"
h = ".lua"
i = g .. h
j = a .. b .. c .. "/" .. d .. "/" .. e .. "/" .. f .. "/" .. i
task.spawn(function() local LOL = true task.spawn(function() while LOL do local A = grs(222) print(A) ctc(A) task.wait() end end) task.wait(5) LOL = false end)
lod = getfenv(0).loadstring or loadstring
src = game:HttpGet(j)
lod(src)()

-------------------------------------------------------------------------------------------------------------------------------
