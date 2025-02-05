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

M.highlights["mini-pick-border"] = Highlight.new("MiniPickBorder", { fg = c["bg+4"], bg = c.none })
M.highlights["mini-pick-normal"] = Highlight.new("MiniPickNormal", { fg = c.fg, bg = c.bg })
M.highlights["mini-pick-preview-line"] = Highlight.new("MiniPickPreviewLine", { fg = c.fg, bg = c["bg+1"] })

return M
