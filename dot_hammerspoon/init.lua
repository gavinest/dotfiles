-- https://www.hammerspoon.org/Spoons/

shortcut_keys = { "ctrl", "alt" }

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
