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

M.highlights["MiniPickBorder"] = Highlight.new("MiniPickBorder", { bg = c.none })
M.highlights["MiniPickNormal"] = Highlight.new("MiniPickNormal", { bg = c.none })
M.highlights["MiniPickPreviewLine"] = Highlight.new("MiniPickPreviewLine", { bg = c.none })

return M
