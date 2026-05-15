-- WonkaHub Loader
print("WonkaHub Loader gestartet...")

if getgenv().WonkaHub_Running then
    warn("WonkaHub is already running!")
    return
end

local originalScript = game:HttpGet("https://raw.githubusercontent.com/qx0Abi/Xterm/refs/heads/main/Test")

local modifiedScript = originalScript
    :gsub("FourHub_Running", "WonkaHub_Running")
    :gsub("FourHub", "WonkaHub")
    :gsub("Four%s*Hub", "WonkaHub")  -- falls Leerzeichen vorkommen

getgenv().WonkaHub_Running = true

print("WonkaHub erfolgreich geladen (mit Namensänderung)!")
loadstring(modifiedScript)()
