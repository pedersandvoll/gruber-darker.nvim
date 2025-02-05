local Highlight = require("gruber-darker.highlight")
local c = require("gruber-darker.palette")

---@type HighlightsProvider
local M = {
    highlights = {},
}

function M.setup()
    for _, value in pairs(M.highlights) do
        value:setup()
    end
end

M.highlights["MiniPickBorder"] = Highlight.new("MiniPickBorder", { fg = c["bg+4"], bg = c.none })
M.highlights["MiniPickNormal"] = Highlight.new("MiniPickNormal", { fg = c.fg, bg = c.bg })
M.highlights["MiniPickPreviewLine"] = Highlight.new("MiniPickPreviewLine", { fg = c.fg, bg = c["bg+1"] })

return M
