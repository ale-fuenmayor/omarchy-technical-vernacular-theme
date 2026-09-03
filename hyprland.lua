-- Technical Vernacular — window chrome.
-- Rule 02, "earn every mark": a line either separates two things or it should
-- not be there. Focus is encoded as value (INK vs INK-FAINT), never as hue, so
-- the distinction survives greyscale and never becomes a second accent color.

local active_border_color = "rgb(1a1712)"   -- INK
local inactive_border_color = "rgb(8f887b)" -- INK-FAINT

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },

    -- Rule 06, density over decoration: space separates, it does not inflate.
    gaps_in = 2,
    gaps_out = 6,
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },

    groupbar = {
      text_color = "rgb(1a1712)",
      text_color_inactive = "rgba(1a1712a0)",
      col = {
        active = "rgba(dcd4c260)",
        inactive = "rgba(dcd4c228)",
      },
      gradients = false,
    },
  },
})
