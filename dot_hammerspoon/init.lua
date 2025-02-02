-- https://www.hammerspoon.org/Spoons/

-- require("hs.ipc") -- enable hs command line tool for local development

shortcut_keys = { "ctrl", "alt" }
hs.hotkey.bind(shortcut_keys, "r", function() hs.reload() end) -- reload config shortcut

hs.loadSpoon("SpoonInstall")

spoon.SpoonInstall:andUse(
    "Caffeine",
    {
        start = true,
        hotkeys = {
            toggle = {shortcut_keys, "c"}
        },
    }
)

spoon.SpoonInstall.repos.ShiftIt = {
   url = "https://github.com/peterklijn/hammerspoon-shiftit",
   desc = "ShiftIt spoon repository",
   branch = "master",
}
spoon.SpoonInstall:andUse(
    "ShiftIt",
    {
        repo = "ShiftIt",
        hotkeys = {},
    }
)

spoon.SpoonInstall.repos.ZeroOffset = {
    url = "https://github.com/gavinest/ZeroOffset",
    desc = "ZeroOffset spoon repository",
    branch = "main",
}
spoon.SpoonInstall:andUse(
    "ZeroOffset",
    {
        repo = "ZeroOffset",
        start = true,
        hotkeys = {
            toggle = {shortcut_keys, "z"}
        },
    }
)
