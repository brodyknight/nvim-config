return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = [[
          __/\\\\\_____/\\\__/\\\________/\\\__/\\\\\\\\\\\__/\\\\____________/\\\\_        
           _\/\\\\\\___\/\\\_\/\\\_______\/\\\_\/////\\\///__\/\\\\\\________/\\\\\\_       
            _\/\\\/\\\__\/\\\_\//\\\______/\\\______\/\\\_____\/\\\//\\\____/\\\//\\\_      
             _\/\\\//\\\_\/\\\__\//\\\____/\\\_______\/\\\_____\/\\\\///\\\/\\\/_\/\\\_     
              _\/\\\\//\\\\/\\\___\//\\\__/\\\________\/\\\_____\/\\\__\///\\\/___\/\\\_    
               _\/\\\_\//\\\/\\\____\//\\\/\\\_________\/\\\_____\/\\\____\///_____\/\\\_   
                _\/\\\__\//\\\\\\_____\//\\\\\__________\/\\\_____\/\\\_____________\/\\\_  
                 _\/\\\___\//\\\\\______\//\\\________/\\\\\\\\\\\_\/\\\_____________\/\\\_ 
                  _\///_____\/////________\///________\///////////__\///______________\///__
   ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
