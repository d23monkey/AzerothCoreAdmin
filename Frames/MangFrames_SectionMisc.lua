﻿-------------------------------------------------------------------------------------------------------------
--
-- AzerothCoreAdmin is a derivative of TrinityAdmin and MangAdmin.
--
-- Copyright (C) 2018 Free Software Foundation, Inc.
-- License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
-- This is free software: you are free to change and redistribute it.
-- There is NO WARRANTY, to the extent permitted by law.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--
-- Official repository: https://github.com/LightDestory/AzerothCoreAdmin
--
-------------------------------------------------------------------------------------------------------------

-- Initializing dynamic frames with LUA and FrameLib
-- This script must be listed in the .toc after "MangFrames_SectionTicket.lua"
-- Also some variables are globally taken from MangAdmin.lua

function MangAdmin:CreateMiscSection()
  local transparency = {
    bg = MangAdmin.db.account.style.transparency.backgrounds,
    btn = MangAdmin.db.account.style.transparency.buttons,
    frm = MangAdmin.db.account.style.transparency.frames
  }
  local color = {
    bg = MangAdmin.db.account.style.color.backgrounds,
    btn = MangAdmin.db.account.style.color.buttons,
    frm = MangAdmin.db.account.style.color.frames,
    linkifier = MangAdmin.db.account.style.color.linkifier
  }

  FrameLib:BuildButton({
    type = "CheckButton",
    name = "ma_checktransparencybutton",
    group = "misc",
    parent = ma_midframe,
    setpoint = {
      pos = "TOPLEFT",
      offX = 6,
      offY = -4
    },
    text = "启用透明度",
    inherits = "OptionsCheckButtonTemplate"
  })

  FrameLib:BuildButton({
    type = "CheckButton",
    name = "ma_checklocalsearchstringsbutton",
    group = "misc",
    parent = ma_midframe,
    setpoint = {
      pos = "TOPLEFT",
      offX = 160,
      offY = -4
    },
    text = "启用本地字符搜索",
    inherits = "OptionsCheckButtonTemplate"
  })

  FrameLib:BuildButton({
    type = "CheckButton",
    name = "ma_showminimenubutton",
    group = "misc",
    parent = ma_midframe,
    setpoint = {
      pos = "TOPLEFT",
      offX = 160,
      offY = -34
    },
    text = "启用迷你菜单/工具栏",
    inherits = "OptionsCheckButtonTemplate"
  })

  FrameLib:BuildButton({
    type = "CheckButton",
    name = "ma_showtooltipsbutton",
    group = "misc",
    parent = ma_midframe,
    setpoint = {
      pos = "TOPLEFT",
      offX = 160,
      offY = -64
    },
    text = "启用工具栏提示",
    inherits = "OptionsCheckButtonTemplate"
  })

  FrameLib:BuildButton({
    type = "CheckButton",
    name = "ma_showchatoutputbutton",
    group = "misc",
    parent = ma_midframe,
    setpoint = {
      pos = "TOPLEFT",
      offX = 160,
      offY = -94
    },
    text = "聊天输出显示",
    inherits = "OptionsCheckButtonTemplate"
  })

  FrameLib:BuildFontString({
    name = "ma_delayparamlabel",
    group = "misc",
    parent = ma_midframe,
    text = "更新延迟",
    setpoint = {
      pos = "TOPLEFT",
      offX = 160,
      offY = -124
    }
  })
  
  FrameLib:BuildFontString({
    name = "ma_delayparamlabel2",
    group = "misc",
    parent = ma_midframe,
    text = "在“服务器”标签内曲线图的更新频率.\n|c777DDDFF4000 = ~1 分钟, 20000 =~5 分钟",
    setpoint = {
      pos = "TOPLEFT",
      offX = 160,
      offY = -144
    }
  })

  FrameLib:BuildFrame({
    type = "EditBox",
    name = "ma_delayparam",
    group = "misc",
    parent = ma_midframe,
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 235,
      offY = -124
    },
    inherits = "InputBoxTemplate"
  })

  FrameLib:BuildFrame({
    type = "Slider",
    name = "ma_frmtrslider",
    group = "misc",
    parent = ma_midframe,
    size = {
      width = 80
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 15,
      offY = -40
    },
    inherits = "OptionsSliderTemplate"
  })

  FrameLib:BuildFrame({
    type = "Slider",
    name = "ma_btntrslider",
    group = "misc",
    parent = ma_midframe,
    size = {
      width = 80
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 15,
      offY = -80
    },
    inherits = "OptionsSliderTemplate"
  })

  FrameLib:BuildButton({
    name = "ma_bgcolorshowbutton",
    group = "misc",
    parent = ma_midframe,
    texture = {
      name = "ma_bgcolorshowbutton_texture",
      color = {color.bg.r, color.bg.g, color.bg.b, 1.0}
    },
    size = {
      width = 20,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 10,
      offY = -114
    }
  })

  FrameLib:BuildFontString({
    name = "ma_bgcolorshowtext",
    group = "misc",
    parent = ma_midframe,
    text = "背景颜色",
    setpoint = {
      pos = "TOPLEFT",
      offX = 35,
      offY = -114
    }
  })

  FrameLib:BuildButton({
    name = "ma_frmcolorshowbutton",
    group = "misc",
    parent = ma_midframe,
    texture = {
      name = "ma_frmcolorshowbutton_texture",
      color = {color.frm.r, color.frm.g, color.frm.b, 1.0}
    },
    size = {
      width = 20,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 10,
      offY = -138
    }
  })

  FrameLib:BuildFontString({
    name = "ma_frmcolorshowtext",
    group = "misc",
    parent = ma_midframe,
    text = "框架颜色",
    setpoint = {
      pos = "TOPLEFT",
      offX = 35,
      offY = -138
    }
  })

  FrameLib:BuildButton({
    name = "ma_btncolorshowbutton",
    group = "misc",
    parent = ma_midframe,
    texture = {
      name = "ma_btncolorshowbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, 1.0}
    },
    size = {
      width = 20,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 10,
      offY = -162
    }
  })

  FrameLib:BuildFontString({
    name = "ma_btncolorshowtext",
    group = "misc",
    parent = ma_midframe,
    text = "按钮颜色",
    setpoint = {
      pos = "TOPLEFT",
      offX = 35,
      offY = -162
    }
  })

  FrameLib:BuildButton({
    name = "ma_linkifiercolorbutton",
    group = "misc",
    parent = ma_midframe,
    texture = {
      name = "ma_linkifiercolorbutton_texture",
      color = {color.linkifier.r, color.linkifier.g, color.linkifier.b, 1.0}
    },
    size = {
      width = 20,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 10,
      offY = -186
    }
  })

  FrameLib:BuildFontString({
    name = "ma_linkifiercolortext",
    group = "misc",
    parent = ma_midframe,
    text = "多路颜色",
    setpoint = {
      pos = "TOPLEFT",
      offX = 35,
      offY = -186
    }
  })

  FrameLib:BuildButton({
    name = "ma_applystylebutton",
    group = "misc",
    parent = ma_midframe,
    texture = {
      name = "ma_applystylebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 100,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 10,
      offY = -225
    },
    text = "应用更改"
  })

  FrameLib:BuildFrame({
    name = "ma_weatherdropdown",
    group = "misc",
    parent = ma_midframe,
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 495,
      offY = -6
    },
    inherits = "UIDropDownMenuTemplate"
  })

  FrameLib:BuildButton({
    name = "ma_changeweatherbutton",
    group = "misc",
    parent = ma_midframe,
    texture = {
      name = "ma_changeweatherbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 110,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 630,
      offY = -10
    },
    text = "变换天气"
  })
end
