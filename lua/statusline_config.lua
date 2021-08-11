local gl = require("galaxyline")
local gls = gl.section
local condition = require("galaxyline.condition")
local colors = require "themes/gruv"
local modeColors = {
    n = colors.bright_red,
    i = colors.bright_green,
    c = colors.bright_blue,
    [""] = colors.bright_red,
    V = colors.bright_red,
    v = colors.bright_red,
    R = colors.bright_red
}

gl.short_line_list = {" "}

gls.left[1] = {
  FirstElement = {
    -- provider = function() return '▋' end,
    provider = function() return ' ' end,
    highlight = { colors.bright_red, colors.bright_red}
    
  },
}

gls.left[2] = {
    statusIcon = {
        provider = function()
            return "  "
        end,
        highlight = {colors.dark0, colors.bright_red},
        separator = " ",
        separator_highlight = {colors.bright_red, colors.dark0}
    }
}

-- little bomb
gls.left[3] = {
    FileIcon = {
        provider = "FileIcon",
        condition = condition.buffer_not_empty,
        highlight = {colors.gray, colors.dark0}
    }
}

-- statusline_config.lua
gls.left[4] = {
    FileName = {
        provider = {"FileName"},
        condition = condition.buffer_not_empty,
        highlight = {colors.gray, colors.dark0},
        separator = "",
        separator_highlight = {colors.dark0, colors.dark1}
    }
}

--  nvim
gls.left[5] = {
    current_dir = {
        provider = function()
            local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
            return "  " .. dir_name .. " "
        end,
        highlight = {colors.gray, colors.dark1},
        separator = " ",
        separator_highlight = {colors.dark1, colors.dark0}
    }
}


local checkwidth = function()
    local squeeze_width = vim.fn.winwidth(0) / 2
    if squeeze_width > 30 then
        return true
    end
    return false
end

-- git
-- curve
--
gls.mid[0] = {
    GitIcon = {
        provider = function()
            return " "
        end,
        condition = require("galaxyline.provider_vcs").check_git_workspace,
        highlight = {colors.bright_red, colors.dark0},
        separator = " ",
        separator_highlight = {colors.gray, colors.dark0}
    }
}

gls.mid[1] = {
    GitBranch = {
        provider = "GitBranch",
        condition = require("galaxyline.provider_vcs").check_git_workspace,
        highlight = {colors.gray, colors.dark0},
    }
}
gls.mid[2] = {
    DiffAdd = {
        provider = "DiffAdd",
        condition = checkwidth,
        icon = "   ",
        highlight = {colors.neutral_green, colors.dark0}
    }
}

gls.mid[3] = {
    DiffModified = {
        provider = "DiffModified",
        condition = checkwidth,
        icon = "   ",
        highlight = {colors.gray, colors.dark0}
    }
}

gls.mid[4] = {
    DiffRemove = {
        provider = "DiffRemove",
        condition = checkwidth,
        icon = "   ",
        highlight = {colors.bright_red, colors.dark0}
    }
}

gls.right[1] = {
    lsp_status = {
        provider = function()
            local clients = vim.lsp.get_active_clients()
            if next(clients) ~= nil then
                return " " .. "  " .. " LSP "
            else
                return ""
            end
        end,
        highlight = {colors.bright_red, colors.dark0}
    }
}


gls.right[2] = {
    DiagnosticError = {
        provider = "DiagnosticError",
        icon = "  ",
        highlight = {colors.bright_red, colors.dark0}
    }
}

gls.right[3] = {
    DiagnosticWarn = {
        provider = "DiagnosticWarn",
        icon = "  ",
        highlight = {colors.neutral_yellow, colors.dark0}
    }
}

-- 
gls.right[4] = {
    viMode_icon = {
        provider = function()
            return "␥ "
        end,
        -- highlight = {colors.dark0, modeColors[vim.fn.mode()]},
        -- separator = " ",
        -- separator_highlight = {modeColors[vim.fn.mode()], colors.dark1}
        separator = "",
        separator_highlight = {colors.bright_red, colors.bright_red},
        highlight = {colors.dark0, colors.bright_red}
    }
}

gls.right[5] = {
    ViMode = {
        provider = function()
            local alias = {
                n = "Normal",
                i = "Insert",
                c = "Command",
                V = "Visual",
                [""] = "Visual",
                v = "Visual",
                R = "Replace"
            }
            local current_Mode = alias[vim.fn.mode()]

            -- print(vim.fn.mode())
            -- print(" " .. modeColors[vim.fn.mode()] .. " ")
            -- print(type(colors.dark1))

            if current_Mode == nil then
                return "  Terminal "
            else
                return "  " .. current_Mode .. " "
            end
        end,
        highlight = {colors.gray, colors.dark0}
    }
}

gls.right[6] = {
    some_icon = {
        provider = function()
            return " "
        end,
        -- separator = " ",
        separator = "",
        separator_highlight = {colors.bright_red, colors.bright_red},
        highlight = {colors.dark0, colors.bright_red}
    }
}

gls.right[7] = {
    line_percentage = {
        provider = function()
            local current_line = vim.fn.line(".")
            local total_line = vim.fn.line("$")

            if current_line == 1 then
                return "  Top "
            elseif current_line == vim.fn.line("$") then
                return "  Bot "
            end
            local result, _ = math.modf((current_line / total_line) * 100)
            return "  " .. result .. "% "
        end,
        highlight = {colors.gray, colors.dark0}
    }
}
