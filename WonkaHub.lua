if getgenv().WonkaHub_Running then
    warn("Script already running!")
    return
end

getgenv().WonkaHub_Running = true

print("WonkaHub loaded - full script too large for single upload via tool. Consider splitting or using Git locally.")
