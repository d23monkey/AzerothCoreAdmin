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

--[[
How to add a localized string:
1. Look below and find the functional area(Tab) your string belongs in.
2. In that section, find the appropriate type of string (Tooltip, Label, Other)
3. Each line is an assignment equation. On the left side is the 'token' which represents the string. The token is used
  in the source code, and is replaced by the actual string at runtime. The token is quoted, and contained in square brackets ([]).
  Example: ["strength"]
4. Now assign a value to the token for the language you are working with. For example, if I am editing the enUS file, I want to
  assign the value, in US English, to the token:
  ["strength"] = "Strength",
  Please note the line is terminated with a comma (,).
5. A given token must exist in all supported languages. If we edit the deDE file, we would use:
  ["strength"] = "Stärke",
6. Some of these lines also contain color codes (example: |cFF00FF00 and |r) Don't alter these, please.

AzerothCoreAdmin Locale Team:
You have received this file which currently contains enUS strings, but will actually be the file for your
selected language.
1. Edit the first un-commented line below, which should resemble: function Return_enUS(). Change
  the 'enUS' to the four letter code for your locale (example: deDE).
2. Proceed to localization by examining each line in the file, and altering the US English strings on
  the RIGHT of each equation to your selected language. DO NOT alter anything on the LEFT sides
  (the tokens). Example: ["token_do_not_edit"] = "Edit this string to your language",
3. Some text includes color codes:     ["label_infoRevision"] = "|cFF00FF00Trinity Revision:|r ",
  The Color code should NOT be localized/edited. The color code is a tag, with an opening element
  and a closing element. The opening element is "|c" followed by 8 numbers. The closing element
  is "|r". In the example above, "|cFF00FF00" and "|r" are the color code and should NOT be changed.
  That leaves "Trinity Revision:" as the string to edit in the above example.
4. Some strings may not be edited at all because they are used in code or contain code. They
  are marked.
5. Please do not edit comments. In LUA, the programming language we use here, code comments are separated from code by the
  use of "" (makes anything AFTER it a comment, to the end of the line) or comments can be enclosed between.

If you have any questions, contact iotech.
]] --

function Return_zhCN()
  return {
    --[[General-Tooltips]]
    ["tt_iconHint"] = "|cffeda55fClick|r 打开 AzerothCoreAdmin. |cffeda55fShift+点击|r 重新加载用户界面.",
    ["tt_languageButton"] = "单击更改界面语言并重新载入 AzerothCoreAdmin.", --Removed locals. Updated tooltip to just reload
    ["tt_closeWindow"] = "关闭 AzerothCoreAdmin",
    ["tt_clearParameterBox"] = "清除参数框。",
    ["tt_bag"] = "显示所选角色的背包或您的包，如果不输入参数，则显示第一个背包 [[参数: $背包位置: 0-4]]",
    ["tt_cheatExploreMapsOn"] = "单击为目标角色显示所有地图。",
    ["tt_cheatExploreMapsOff"] = "单击为目标角色隐藏所有未探索地图。",
    --[[General-Control Labels]]
    ["label_languageButton"] = "更改语言",
    ["label_infoRevision"] = "|cFF00FF00AzerothCore 版本:|r ", --Updated: Matched string output to AzerothCore
    ["label_infoPlatform"] = "|cFF00FF00服务器平台|r ",
    ["label_infoUptime"] = "|cFF00FF00在线时间:|r ",
    ["label_onlineCounter"] = "|cFF00FF00在线玩家:|r ",
    ["label_onlineInWorldCounter"] = "|cFF00FF00世界玩家:|r ",
    ["label_maxOnlineCounter"] = "|cFF00FF00最大在线:|r ",
    ["label_closeWindowButton"] = "关闭",
    ["label_resetSliderButton"] = "重置",
    ["label_infoRealm"] = "|cFF00FF00服务器名称:|r " .. GetCVar("realmName"), --do not change this line!
    ["label_infoChar"] = "|cFF00FF00角色:|r " .. UnitName("player"), --do not change this line!
    ["label_infoGUID"] = "|cFF00FF00Guid:|r ",
    ["label_infoTickets"] = "|cFF00FF00求助:|r ",
    ["label_searchResults"] = "|cFF00FF00搜索结果:|r ",
    ["label_parameterText"] = "参数:", --Used on multiple tabs
    ["label_paramaterClearButton"] = "清除参数",
    ["label_bagButton"] = "背包",
    --[[General-Other]]
    ["inLineCommands"] = {"/azerothcoreadmin", "/acadmin"},
    ["selectionError"] = "请只选择您自己，其他玩家或什么都不选择！",
    ["paramError"] = "所选操作需要参数！",
    ["genericEnabledText"] = "Enabled",
    ["genericDisabledText"] = "Disabled",
    ["invalidParams1"] = "|cffFF0000您必须输入1个参数！|r",
    ["invalidParams2"] = "|cffFF0000您必须输入2个参数！|r",
    ["invalidParams3"] = "|cffFF0000您必须输入3个参数！|r",
    ["operationAborted"] = "|cffFF0000操作中止！|r",
    ["operationCompleted"] = "|cff00FF00操作成功完成|r",
    ["mustBeANumber"] = "值必须是数字!",
    ["log_resetSlider"] = "Reset slider to 1.0",
    ["log_bag"] = "Opened _T_'s bag on slot _V1_ ",
    ["log_cheatExploreMaps"] = "Explore maps cheat for _T_ has been set to _V1_",
    --[[GM-Name]]
    ["tabname_GM"] = "管理",
    --[[GM-Tooltips]]
    ["ttGM_tabButton"] = "切换至 AzerothCoreAdmin 主窗口.",
    ["ttGM_displayAccountGMLevel"] = "显示你的帐号等级",
    ["ttGM_GMModeOn"] = "单击激活 GM 模式.",
    ["ttGM_GMModeOff"] = "单击解除 GM 模式.",
    ["ttGM_flyModeOn"] = "单击激活目标角色的飞行模式.",
    ["ttGM_flyModeOff"] = "单击解除目标角色的飞行模式.",
    ["ttGM_GodOnButton"] = "单击激活无敌模式.",
    ["ttGM_GodOffButton"] = "单击解除无敌模式.",
    ["ttGM_acceptWhispersOn"] = "单击允许来自其他玩家的悄悄话.",
    ["ttGM_acceptWhispersOff"] = "单击阻止来自其他玩家的悄悄话.",
    ["ttGM_visibilityOn"] = "单击激活隐身.",
    ["ttGM_visibilityOff"] = "单击解除隐身.",
    ["ttGM_cheatTaxiOn"] = "单击为目标角色显示所有飞行路线。登出后将失效.",
    ["ttGM_cheatTaxiOff"] = "单击为目标角色恢复显示已知的飞行路线.",
    ["ttGM_cheatWaterWalkOn"] = "开启目标生物水上行走",
    ["ttGM_cheatWaterWalkOff"] = "关闭目标生物水上行走",
    ["ttGM_cheatNoCastTimeOn"] = "单击禁用目标角色施法时间",
    ["ttGM_cheatNoCastTimeOff"] = "单击恢复目标角色施法时间",
    ["ttGM_cheatNoCooldownOn"] = "单击禁用目标角色冷却时间",
    ["ttGM_cheatNoCooldownOff"] = "单击恢复目标角色冷却时间",
    ["ttGM_accountIPLockOn"] = "仅允许最后一个IP锁定您的帐户",
    ["ttGM_accountIPLockOff"] = "通过允许每个IP解锁您的帐户",
    ["ttGM_createAccount"] = "创建帐号 [[参数: $帐号名 $密码]]",
    ["ttGM_deleteAccount"] = "删除指定帐号及其所有角色数据 [[参数: $帐号名]]",
    ["ttGM_setAccountGMLevel"] = "将帐号设置为指定GM等级\n(0=普通玩家, 1=助手, 2=助理, 3=GM, 4=完全权限)\n [[参数: $帐号名 #GM等级]]",
    ["ttGM_setAccountPassword"] = "修改指定帐号的密码\n [[参数: $帐号名 $密码 $密码]]",
    ["ttGM_setAccountAddon"] = "设置帐号访问权限。\n#权限(0=WoW, 1=TBC, 2=WotLK) [[参数: $帐号名 #权限]]",
    ["ttGM_GMList"] = "显示此服务器上的GM帐户",
    ["ttGM_GMInGame"] = "显示在线的GM",
    ["ttGM_GMNotify"] = "向所有在线GM发送指定消息\n|c777DDDFF [[参数: $notification]]",
    ["ttGM_GMMessage"] = "向所有在线GM发送广播消息\n|c777DDDFF [[参数: $message]]",
    ["ttGM_cast"] = "施法。 [[参数: #SpellID]]",
    ["ttGM_castBack"] = "被选中的生物会对你施放 [SpellID]法术。 [[参数: #SpellID]]",
    ["ttGM_castDist"] = "你在远处施放 [SpellID] 法术 [#Dist]。 [[参数: #SpellID #Dist]]",
    ["ttGM_castSelf"] = "被选中的生物对自己施放 [SpellID] 法术。 [[参数: #SpellID]]",
    ["ttGM_castTarget"] = "选定的生物对其目标施放 [SpellID] 法术。 [[参数: #SpellID]]",
    ["ttGM_teleportTo"] = "将玩家传送到指定位置。 [[参数: $location]]",
    ["ttGM_teleportAdd"] = "在您的位置添加指定名称的传送点。[[参数: $name]]",
    ["ttGM_teleportDel"] = "删除指定传送点。 [[参数: $name]]",
    ["ttGM_listItem"] = "列出所有包含指定[#物品ID]它们的GUID、物主GUID、物主账号和名字、\n角色银行、邮箱、包裹、拍卖行。 默认输出最大值10\n [[参数: #ItemID]]",
    ["ttGM_lookupTaxi"] = "查找飞行路线点 [[参数: $部分区域名称]]",
    ["ttGM_lookupZone"] = "查找区域. [[参数: $部分区域名称]]",
    ["ttGM_goTaxi"] = "传送到飞行路线点 [[参数: #飞行路线点]]",
    ["ttGM_goTrigger"] = "传送到指定传送门 [[参数: #传送门ID]]",
    ["ttGM_goXY"] = "传送到指定地图的指定坐标(Z坐标在地面/水面之上)，\n如果省略地图ID则传送到当前地图的指定坐标\n [[参数: #x #y [#mapid]]]",
    ["ttGM_goXYZ"] = "传送到指定地图的指定坐标及高度，如果省略地图ID\n则传送到当前地图的指定坐标及高度\n [[参数: #x #y #z [#mapid]]]",
    ["ttGM_goZoneXY"] = "传送到指定区域的指定坐标(Z坐标在地面/水面之上)，\n如果省略区域ID则传送到当前区域的指定坐标 [[参数: #x #y [#zoneid]]]",
    ["ttGM_setJailAlliance"] = "将当前位置设置为联盟监狱。",
    ["ttGM_setJailHorde"] = "将当前位置设置为部落监狱。",
    ["ttGM_petCreate"] = "使选定的动物成为您的宠物。",
    ["ttGM_petLearn"] = "教你的宠物学习法术 [[参数: #SPELLID]]",
    ["ttGM_petUnLearn"] = "教你的宠物忘却法术 [[参数: #SPELLID]]",
    ["ttGM_petTalentsLearn"] = "为宠物学习其生物类型的所有天赋",
    ["ttGM_bank"] = "单击显示你的银行。",
    ["ttGM_screen"] = "单击可以抓图。",
    ["ttGM_dismountPlayer"] = "点击如果你在坐骑状态，坐骑状态会被解除",
    ["ttGM_gridNavigatorAhead"] = "向北移动",
    ["ttGM_gridNavigatorBack"] = "向南移动",
    ["ttGM_gridNavigatorRight"] = "向东移动",
    ["ttGM_gridNavigatorLeft"] = "向西移动",
    ["ttGM_instantKillMode"] = "选中时，点击敌方生物会杀死它。",
    ["ttGM_setSpeed"] = "移动滑块来增加或减少选定角色的移动速度。",
    ["ttGM_setScale"] = "移动滑块来增加或减少选定角色的模型大小。",
    ["ttGM_resetSpeed"] = "重置速度 1.0",
    ["ttGM_resetScale"] = "重置模型 1.0",
    --[[GM-Control Labels]]
    ["labelGM_offButton"] = "关",
    ["labelGM_displayAccountGMLevelButton"] = "显示GM等级",
    ["labelGM_GMOnButton"] = "GM模式 开",
    ["labelGM_flyModeOnButton"] = "飞行模式 开",
    ["labelGM_godModeOnButton"] = "无敌模式 开",
    ["labelGM_acceptWhispersOnButton"] = "密语模式 开",
    ["labelGM_visibilityOffButton"] = "隐身模式 开",
    ["labelGM_cheatTaxiOnButton"] = "所有飞行点 开",
    ["labelGM_cheatExploreMapsOnButton"] = "搜索地图 开",
    ["labelGM_cheatWaterWalkOnButton"] = "水上行走 开",
    ["labelGM_cheatNoCastTimeOnButton"] = "关闭施法时间 开",
    ["labelGM_cheatNoCooldownOnButton"] = "关闭冷却时间 开",
    ["labelGM_accountIPLockOnButton"] = "帐号IP锁定 开",
    ["labelGM_GMLevel4Warning"] = "|cffFF0000红色按钮使用需要GM等级4!|r",
    ["labelGM_createAccountButton"] = "创建帐号",
    ["labelGM_deleteAccountButton"] = "删除帐号",
    ["labelGM_setAccountGMLevelButton"] = "调整GM等级",
    ["labelGM_setAccountPasswordButton"] = "修改密码",
    ["labelGM_setAccountAddonButton"] = "帐号版本等级",
    ["labelGM_GMListButton"] = "GM列表",
    ["labelGM_GMInGameButton"] = "在线GM",
    ["labelGM_GMNotifyButton"] = "GM通知",
    ["labelGM_GMMessageButton"] = "GM消息",
    ["labelGM_castButton"] = "施法",
    ["labelGM_castBackButton"] = "反向施法",
    ["labelGM_castDistButton"] = "范围施法",
    ["labelGM_castSelfButton"] = "自我施法",
    ["labelGM_castTargetButton"] = "目标施法",
    ["labelGM_teleportToButton"] = "传送到传送点",
    ["labelGM_teleportAddButton"] = "添加传送点",
    ["labelGM_teleportDelButton"] = "删除传送点",
    ["labelGM_listItemButton"] = "列表项",
    ["labelGM_lookupTaxiButton"] = "查找飞行点",
    ["labelGM_lookupZoneButton"] = "查找区域",
    ["labelGM_goTaxiButton"] = "到飞行点",
    ["labelGM_goTriggerButton"] = "到传送门",
    ["labelGM_goXYButton"] = "到 XY",
    ["labelGM_goXYZButton"] = "到 XYZ",
    ["labelGM_goZoneXYButton"] = "到区域XY",
    ["labelGM_setJailAllianceButton"] = "联盟监狱",
    ["labelGM_setJailHordeButton"] = "部落监狱",
    ["labelGM_petCreateButton"] = "宠物创造",
    ["labelGM_petLearnButton"] = "宠物学习",
    ["labelGM_petUnLearnButton"] = "宠物忘却",
    ["labelGM_petTalentsLearnButton"] = "宠物天赋",
    ["labelGM_bankButton"] = "银行",
    ["labelGM_screenButton"] = "截图",
    ["labelGM_dismountPlayerButton"] = "下马",
    ["labelGM_gridNavigatorText"] = "网格导航器",
    ["labelGM_northGridNavigator"] = "北", --Abbreviation for North
    ["labelGM_southGridNavigator"] = "南", --Abbreviation for South
    ["labelGM_eastGridNavigator"] = "东", --Abbreviation for East
    ["labelGM_westGridNavigator"] = "西", --Abbreviation for West
    ["labelGM_instantKillModeCheckBox"] = "立即杀死敌对生物",
    ["labelGM_setSpeedDesc"] = "速度: ",
    ["labelGM_setScaleDesc"] = "体型: ",
    --[[GM-Commands Output]]
    ["logGM_accountInvalidUsername"] = " is not a valid username\n|cff00FF00Account's username is limited to 20 characters!",
    ["logGM_createAccountInvalidPassword"] = " is not a valid password\n|cff00FF00Account's password is limited to 16 characters!",
    ["logGM_setAccountGMLevelInvalidID"] = " is not a valid GM level\n|cff00FF00Addon values:\n0 - Player 1\n1 - GM Rank 1\n2 - GM Rank 2\n3 - GM Rank 3",
    ["logGM_setAccountPasswordInvalidEquality"] = "The password and password confirm doesn't match",
    ["logGM_setAccountAddonInvalidID"] = " is not a valid expansion id\n|cff00FF00Addon values:\n0 - normal\n1 - tbc\n2 - wotlk",
    ["logGM_displayAccountGMLevel"] = "Displayed account's GM level.",
    ["logGM_GMMode"] = "Turned GM-mode and GM-chat to _V1_",
    ["logGM_flyMode"] = "Turned Fly-mode to _V1_",
    ["logGM_godMode"] = "Turned God-mode to _V1_",
    ["logGM_acceptWhispers"] = "Turned accepting whispers to _V1_",
    ["logGM_visibility"] = "Turned your visibility to _V1_",
    ["logGM_cheatTaxi"] = "Taxi cheat for _T_ has been set to _V1_",
    ["logGM_cheatWaterWalk"] = "WaterWalk cheat for _T_ has been set to _V1_",
    ["logGM_cheatNoCastTime"] = "Turned NoCastTime to _V1_",
    ["logGM_cheatNoCooldown"] = "Turned NoCooldown to _V1_",
    ["logGM_accountIPLock"] = "Turned GM account lock to _V1_",
    ["logGM_createAccountCompleted"] = "Created the following account: _V1_ with password: _V2_",
    ["logGM_deleteAccountCompleted"] = "Deleted the following account: _V1_",
    ["logGM_setAccountGMLevelCompleted"] = "_V1_'s GM level has been set to _V2_",
    ["logGM_setAccountPasswordCompleted"] = "_V1_'s password has been set to _V2_",
    ["logGM_setAccountAddonCompleted"] = "_V1_'s addon level has been set to  _V2_",
    ["logGM_GMList"] = "Listed GM accounts",
    ["logGM_GMInGame"] = "Listed currently online GMs",
    ["logGM_GMNotify"] = "Sent GM Notify: _V1_",
    ["logGM_GMMessage"] = "Sent GM Message: _V1_",
    ["logGM_cast"] = "Cast spell with ID: _V1_",
    ["logGM_castBack"] = "Cast back spell with ID: _V1_",
    ["logGM_castDist"] = "Cast spell with ID: _V1_ and distance: _V2_",
    ["logGM_castSelf"] = "Cast self spell with ID: _V1_",
    ["logGM_castTarget"] = "Cast target spell with ID: _V1_",
    ["logGM_teleportTo"] = "_T_ teleported to _V1_",
    ["logGM_teleportAdd"] = "_V1_ has been added as teleport location",
    ["logGM_teleportDel"] = "_V1_ has been deleted as teleport location",
    ["logGM_listItem"] = "Listed Item with ID: _V1_",
    ["logGM_lookupTaxi"] = "Looked up Taxinode with ID: _V1_",
    ["logGM_lookupZone"] = "Looked up Zone with ID: _V1_",
    ["logGM_goTaxi"] = "Teleported to TaxiNode with ID: _V1_",
    ["logGM_goTrigger"] = "Teleported to Trigger with ID: _V1_",
    ["logGM_goXY"] = "Teleported to the X: _V1_ and Y: _V2_",
    ["logGM_goXYZ"] = "Teleported to the X: _V1_ Y: _V2_ Z: _V3_",
    ["logGM_goZoneXY"] = "Teleported to ZoneID _V1_ on X: _V2_ and Y: _V3_",
    ["logGM_setJailAlliance"] = "Set location of Alliance Jail",
    ["logGM_setJailHorde"] = "Set location of Horde Jail",
    ["logGM_petCreate"] = "Created a pet",
    ["logGM_petLearn"] = "Taught pet spell with ID: _V1_",
    ["logGM_petUnLearn"] = "Un-taught pet spell  with ID: _V1_",
    ["logGM_petTalentsLearn"] = "Your pet is a genius (learnt all talents)",
    ["logGM_bank"] = "Opened your bank",
    ["logGM_screen"] = "Took a screenshot",
    ["logGM_dismountPlayer"] = "Dismounted from mount",
    ["logGM_instantKillMode"] = " insta-kill",
    ["logGM_setSpeed"] = "'s speed has been set to ",
    ["logGM_setScale"] = "'s scale has been set to ",
    ["logGM_gridNavigator"] = "Teleported to the following grid-coordinates X: _V1_ and Y: _V2_",
    --[[CHAR-Name]]
    ["tabmenu_Char"] = "人物",
    --[[CHAR-Tooltips]]
    ["ttCHAR_CharButton"] = "切换至人物窗口。",
    ["ttCHAR_kill"] = "杀死目标生物或玩家。",
    ["ttCHAR_reviveplayer"] = "复活目标玩家。",
    ["ttCHAR_saveplayer"] = "保存目标玩家数据。",
    ["ttCHAR_kick"] = "单击将选定的角色强制离线。",
    ["ttCHAR_cooldown"] = "结束指定玩家或者自己的所有法术的冷却时间或指定法术ID的冷却时间。",
    ["ttCHAR_guid"] = "显示目标角色GUID。",
    ["ttCHAR_pInfo"] = "获取目标角色的信息。",
    ["ttCHAR_distance"] = "与目标生物保持距离。",
    ["ttCHAR_recall"] = "将目标生物传送回最后一次传送前的位置",
    ["ttCHAR_morph"] = "改变目标角色的外型 [[参数: $模型ID]]",
    ["ttCHAR_demorph"] = "解除目标角色的任何变形效果",
    ["ttCHAR_unbindSight"] = "解除对目标视野的绑定",
    ["ttCHAR_bindSight"] = "绑定视野到目标视野",
    ["ttCHAR_gps"] = "查看目标生物的坐标。",
    ["ttCHAR_rename"] = "在下次登陆时，更改目标角色名称",
    ["ttCHAR_customize"] = "在下次登陆时，更改目标角色外貌或性别",
    ["ttCHAR_changeRace"] = "在下次登陆时，更改目标角色种族",
    ["ttCHAR_changeFaction"] = "在下次登陆时，更改目标角色阵营",
    ["ttCHAR_combatStop"] = "使目标角色(或自己)脱离战斗",
    ["ttCHAR_maxSkill"] = "使目标角色(或自己)的技能熟练度达到等级最大值",
    ["ttCHAR_freeze"] = "冻结目标玩家并取消他们聊天",
    ["ttCHAR_unfreeze"] = "解冻目标玩家并恢复他们聊天",
    ["ttCHAR_possess"] = "控制目标生物(无限时)",
    ["ttCHAR_unpossess"] = "解除对目标生物的控制",
    ["ttCHAR_repairItems"] = "修理目标玩家的装备和武器",
    ["ttCHAR_ban"] = "对账号<帐号|IP|角色>进行封号。 [[参数: <帐号|IP|角色>  $名字/IP|r <-1 for permanent ban|XXdYYhZZm 持续一段特定的时间>]]",
    ["ttCHAR_unban"] = "解除对指定<帐号|IP|角色>的封号  [[参数: <帐号|IP|角色> $NameOrIp]]",
    ["ttCHAR_banInfo"] = "查看有关指定帐号的封号详细信息 <帐号|IP|角色> [[参数: <帐号|IP|角色> $名字/IP]]",
    ["ttCHAR_banList"] = "在封号列表中搜索 <帐号|IP|角色> [[参数: <帐号|IP|角色> $N名字/IP]]",
    ["ttCHAR_appear"] = "将您传送置指定角色所在的位置 [[参数: $角色名]]",
    ["ttCHAR_summon"] = "将指定角色传送到您所在的位置 [[参数: $角色名]]",
    ["ttCHAR_groupSummon"] = "传送指定角色和他/她的小队到你的位置 [[参数: $角色名]]",
    ["ttCHAR_teleportName"] = "将指定的角色传送到指定的位置 [[参数: $角色名 $传送点名]]",
    ["ttCHAR_teleportGroup"] = "传送目标角色和他/她的小队到指定“#传送点名”的位置 [[参数: $传送点名]]",
    ["ttCHAR_createGuild"] = "创建一个以指定名称命名的公会和指定的首领，公会称必须用引号括起来。 [[参数: $会长名 $公会名]]",
    ["ttCHAR_deleteGuild"] = "解散指定公会. 公会称必须用引号括起来. [[参数: $公会名]]",
    ["ttCHAR_inviteGuild"] = "将指定角色添加至指定公会. 公会称必须用引号括起来 [[参数: $角色名 $公会名]]",
    ["ttCHAR_uninviteGuild"] = "将指定角色踢出公会 [[参数: $角色名]]",
    ["ttCHAR_rankGuild"] = "将指定角色设置为他/她公会中指定的等级 [[参数: $角色名 #等级编号]]",
    ["ttCHAR_mute"] = "指定角色的帐号下所有角色禁止聊天N分钟 [[参数: $角色名 #分钟 #理由]]",
    ["ttCHAR_unmute"] = "取消目标玩家禁言 [[参数: $角色名]]",
    ["ttCHAR_aura"] = "将指定光环添加到目标角色身上 [[参数: #光环ID]]",
    ["ttCHAR_unaura"] = "将指定光环从目标角色身上移除 [[参数: #光环ID]]",
    ["ttCHAR_jailAlliance"] = "将指定玩家传送置联盟监狱 [[参数: $角色名]]",
    ["ttCHAR_jailHorde"] = "将指定玩家传送置部落监狱 [[参数: $角色名]]",
    ["ttCHAR_unjail"] = "释放指定玩家 [[参数: $角色名]]",
    ["ttCHAR_questAdd"] = "增加指定任务到目标玩家. [[参数: $任务ID]]",
    ["ttCHAR_questRemove"] = "删除目标玩家的指定任务 [[参数: $任务ID]]",
    ["ttCHAR_questComplete"] = "完成目标玩家的指定任务 [[参数: $任务ID]]",
    ["ttCHAR_damage"] = "对目标造成指定点数的伤害 [[参数: #伤害点数]]",
    ["ttCHAR_showArea"] = "目标玩家显示指定区域 [[参数: $区域ID]]",
    ["ttCHAR_hideArea"] = "目标玩家隐藏指定区域 [[参数: $区域ID]]",
    ["ttCHAR_honorAdd"] = "增加荣誉点到目标玩家 [[参数: $数量]]",
    ["ttCHAR_honorUpdate"] = "为目标玩家保存荣誉点",
    ["ttCHAR_modify"] = "修改所选玩家的指定数量的所选属性",
    ["ttCHAR_reset"] = "重置指定属性",
    ["ttCHAR_learnPreset"] = "学习所选的法术",
    ["ttCHAR_learnSpell"] = "为所选角色学会指定的法术 [[参数: $法术ID]]",
    ["ttCHAR_unlearnSpell"] = "使所选角色忘却指定的法术 [[参数: $法术ID]]",
    --[[CHAR-Control-Labels]]
    ["labelCHAR_killButton"] = "杀死",
    ["labelCHAR_reviveButton"] = "复活",
    ["labelCHAR_saveButton"] = "保存",
    ["labelCHAR_kickButton"] = "踢出",
    ["labelCHAR_cooldownButton"] = "冷却",
    ["labelCHAR_guidButton"] = "显示 GUID",
    ["labelCHAR_pInfoButton"] = "玩家信息",
    ["labelCHAR_distanceButton"] = "距离",
    ["labelCHAR_recallButton"] = "撤销传送",
    ["labelCHAR_morphButton"] = "变形",
    ["labelCHAR_demorphButton"] = "解除变形",
    ["labelCHAR_bindSightButton"] = "绑定视野",
    ["labelCHAR_unbindSightButton"] = "解除视野",
    ["labelCHAR_gpsButton"] = "坐标",
    ["labelCHAR_renameButton"] = "角色改名",
    ["labelCHAR_customizeButton"] = "改变外貌",
    ["labelCHAR_changeRaceButton"] = "改变种族",
    ["labelCHAR_changeFactionButton"] = "改变阵营",
    ["labelCHAR_combatStopButton"] = "脱离战斗",
    ["labelCHAR_maxSkillButton"] = "最大熟练度",
    ["labelCHAR_freezeButton"] = "冻结目标",
    ["labelCHAR_unfreezeButton"] = "解除冻结",
    ["labelCHAR_possessButton"] = "控制目标",
    ["labelCHAR_unpossessButton"] = "解除控制",
    ["labelCHAR_repairItemsButton"] = "修理",
    ["labelCHAR_banButton"] = "封号",
    ["labelCHAR_unbanButton"] = "解除封号",
    ["labelCHAR_banInfoButton"] = "封号信息",
    ["labelCHAR_banListButton"] = "封号列表",
    ["labelCHAR_appearButton"] = "传送到角色",
    ["labelCHAR_summonButton"] = "召唤玩家",
    ["labelCHAR_groupSummonButton"] = "传送小队到我",
    ["labelCHAR_teleportNameButton"] = "传送名称",
    ["labelCHAR_teleportGroupButton"] = "传送小队到…",
    ["labelCHAR_createGuildButton"] = "建立公会",
    ["labelCHAR_deleteGuildButton"] = "解散公会",
    ["labelCHAR_inviteGuildButton"] = "邀请入会",
    ["labelCHAR_uninviteGuildButton"] = "踢出公会",
    ["labelCHAR_rankGuildButton"] = "公会银行",
    ["labelCHAR_muteButton"] = "禁言",
    ["labelCHAR_unmuteButton"] = "解除禁言",
    ["labelCHAR_auraButton"] = "光环",
    ["labelCHAR_unauraButton"] = "解除光环",
    ["labelCHAR_jailAllianceButton"] = "联盟监狱",
    ["labelCHAR_jailHordeButton"] = "部落监狱",
    ["labelCHAR_unjailButton"] = "释放",
    ["labelCHAR_questAddButton"] = "添加任务",
    ["labelCHAR_questRemoveButton"] = "删除任务",
    ["labelCHAR_questCompleteButton"] = "完成任务",
    ["labelCHAR_damageButton"] = "直接伤害",
    ["labelCHAR_showAreaButton"] = "显示区域",
    ["labelCHAR_hideAreaButton"] = "隐藏区域",
    ["labelCHAR_honorAddButton"] = "增加荣誉",
    ["labelCHAR_honorUpdateButton"] = "保存荣誉",
    ["labelCHAR_learnSpellButton"] = "学习法术",
    ["labelCHAR_unlearnSpellButton"] = "忘却法术",
    ["labelCHAR_showMapsButton"] = "显示地图",
    ["labelCHAR_hideMapsButton"] = "隐藏地图",
    ["labelCHAR_modifyButton"] = "修改",
    ["labelCHAR_resetButton"] = "重置",
    ["labelCHAR_learnPresetButton"] = "学习预设",
    ["labelCHAR_modifyLevelUPOption"] = "升级",
    ["labelCHAR_modifyLevelDownOption"] = "降级",
    ["labelCHAR_modifyMoneyOption"] = "金钱",
    ["labelCHAR_modifyEnergyOption"] = "能量",
    ["labelCHAR_modifyRageOption"] = "怒气",
    ["labelCHAR_modifyManaOption"] = "魔法",
    ["labelCHAR_modifyHealthPointsOption"] = "生命",
    ["labelCHAR_modifyAllSpeedsOption"] = "全部速度",
    ["labelCHAR_modifyArenaOption"] = "竞技场",
    ["labelCHAR_modifyBackWalkOption"] = "后退速度",
    ["labelCHAR_modifyDrunkOption"] = "醉酒",
    ["labelCHAR_modifyFlySpeedOption"] = "飞行速度",
    ["labelCHAR_modifyGenderOption"] = "性别",
    ["labelCHAR_modifyHonorOption"] = "荣誉",
    ["labelCHAR_modifyMountSpeedOption"] = "坐骑速度",
    ["labelCHAR_modifyPhaseOption"] = "位面",
    ["labelCHAR_modifyRunicPowerOption"] = "符文力量",
    ["labelCHAR_modifyStandSateOption"] = "表情动作",
    ["labelCHAR_modifySwimSpeedOption"] = "游泳速度",
    ["labelCHAR_modifyTalentPointsOption"] = "天赋点",
    ["labelCHAR_resetTalentsOption"] = "天赋",
    ["labelCHAR_resetStatsOption"] = "属性",
    ["labelCHAR_resetSpellsOption"] = "法术",
    ["labelCHAR_resetHonorOption"] = "荣誉",
    ["labelCHAR_resetLevelOption"] = "级别",
    ["labelCHAR_languageClass"] = "所有语言",
    ["labelCHAR_defaultClass"] = "职业法术和天赋",
    ["labelCHAR_myClass"] = "职业法术",
    ["labelCHAR_craftClass"] = "所有专业",
    ["labelCHAR_GMClass"] = "所有GM技能",
    ["labelCHAR_languageCommon"] = "通用语",
    ["labelCHAR_languageOrcish"] = "兽人语",
    ["labelCHAR_languageTaurahe"] = "牛头人语",
    ["labelCHAR_languageDarnassian"] = "达纳苏斯语",
    ["labelCHAR_languageDwarven"] = "矮人",
    ["labelCHAR_languageThalassian"] = "萨拉斯语",
    ["labelCHAR_languageDraconic"] = "龙语",
    ["labelCHAR_languageDemon"] = "恶魔语",
    ["labelCHAR_languageTitan"] = "泰坦语",
    ["labelCHAR_languageOld"] = "古代语",
    ["labelCHAR_languageGnomish"] = "侏儒语",
    ["labelCHAR_languageTroll"] = "巨魔语",
    ["labelCHAR_languageGutterspeak"] = "亡灵语",
    ["labelCHAR_languageDraenei"] = "德莱尼语",

    --[[CHAR-Commands Output]]
    ["logCHAR_kill"] = "_T_ has been killed",
    ["logCHAR_revive"] = "_T_ has been revived",
    ["logCHAR_save"] = "_T_ has been saved",
    ["logCHAR_kick"] = "_T_ has been kicked",
    ["logCHAR_cooldown"] = "Zero-ed all the cooldowns of _T_",
    ["logCHAR_guid"] = "Showed a GUID of a _T_",
    ["logCHAR_pInfo"] = "Displayed information of _T_",
    ["logCHAR_distance"] = "Displayed the distance from yourself and _T_",
    ["logCHAR_recall"] = "Recalled _T_ to location before last teleport",
    ["logCHAR_morph"] = "_T_ has been morphed with the following display ID: _V1_",
    ["logCHAR_demorph"] = "_T_ has been cleaned from morph effect",
    ["logCHAR_unbindSight"] = "Unbind your vision from _T_",
    ["logCHAR_bindSight"] = "Bind your vision to _T_",
    ["logCHAR_gps"] = "Shows coordinates for the _T_",
    ["logCHAR_rename"] = "Scheduled rename for _T_",
    ["logCHAR_customize"] = "Scheduled customization for _T_",
    ["logCHAR_changeRace"] = "Scheduled race change for _T_",
    ["logCHAR_changeFaction"] = "Scheduled faction change for _T_",
    ["logCHAR_combatStop"] = "Stopped combat for _T_",
    ["logCHAR_maxSkill"] = "Set skills to max value for level to _T_",
    ["logCHAR_freeze"] = "Frozen _T_",
    ["logCHAR_unfreeze"] = "Unfrozen _T_",
    ["logCHAR_possess"] = "Possessed _T_",
    ["logCHAR_unpossess"] = "Unpossessed _T_",
    ["logCHAR_repairItems"] = "Repaired all items of _T_",
    ["logCHAR_ban"] = "Banned _V1_ for _V2_",
    ["logCHAR_unban"] = "Unbanned _V1_",
    ["logCHAR_banInfo"] = "Viewed ban info for _V1_",
    ["logCHAR_banList"] = "Checked _V1_ on ban list",
    ["logCHAR_appear"] = "Teleorted to _V1_",
    ["logCHAR_summon"] = "Teleported _V1_ to you",
    ["logCHAR_groupSummon"] = "Teleported _V1_ and his/her group to you",
    ["logCHAR_teleportName"] = "Teleported _V1_ to _V2_",
    ["logCHAR_teleportGroup"] = "Teleported _T_ and his/her group to _V1_",
    ["logCHAR_createGuild"] = "Created a guild named _V2_ lead by _V1_",
    ["logCHAR_deleteGuild"] = "Deleted the guild _V1_",
    ["logCHAR_inviteGuild"] = "Added _V1_ to the guild _V2_",
    ["logCHAR_uninviteGuild"] = "Kicked _V1_ from his/her guild",
    ["logCHAR_rankGuild"] = "Set rank _V2_ to _V1_",
    ["logCHAR_mute"] = "Muted all the character of the account containing _V1_ for _V2_ minutes]]",
    ["logCHAR_unmute"] = "Unmuted all the character of the account containing _V1_",
    ["logCHAR_aura"] = "Set AuraID _V1_ to _T_",
    ["logCHAR_unaura"] = "Unset AuraID _V1_ to _T_",
    ["logCHAR_jailAlliance"] = "Teleported _V1_ to the Alliance Jail",
    ["logCHAR_jailHorde"] = "Teleported _V1_ to the Horde Jail",
    ["logCHAR_unjail"] = "Unjailed _V1_",
    ["logCHAR_questAdd"] = "Added questID _V1_ to _T_",
    ["logCHAR_questRemove"] = "Removed questID _V1_ to _T_",
    ["logCHAR_questComplete"] = "Set questID _V1_ as completed to _T_",
    ["logCHAR_damage"] = "Applied _V1_ damage to _T_",
    ["logCHAR_showArea"] = "Showed areaID _V1_ to _T_",
    ["logCHAR_hideArea"] = "Hide areaID _V1_ to _T_",
    ["logCHAR_honorAdd"] = "Added _V1_ honor points to _T_",
    ["logCHAR_honorUpdate"] = "Updated honor of _T_",
    ["logCHAR_reset"] = "Reset _V1_ for _T_",


    ["tt_RotateLeft"] = "向左旋转。",
    ["tt_RotateRight"] = "向右旋转。",
    ["tt_modelzoominbutton"] = "放大选定目标模型大小",
    ["tt_modelzoomoutbutton"] = "缩小选定目标模型大小",

    --[[NPC Tab]]
    --[[Name]]
    ["tabmenu_NPC"] = "生物",
    ["tt_NpcButton"] = "切换至“生物”窗口。",
    --[[Tooltips]]
    ["tt_NPCRotateLeft"] = "向左旋转",
    ["tt_NPCRotateRight"] = "向右旋转",
    ["tt_NPCKillButton"] = "杀死选定目标",
    ["tt_npcrespawn"] = "选定目标重生，如果未选择目标则附近所有生物重生",
    ["tt_NPCDistanceButton"] = "查看自己与目标生物之间的距离",
    ["tt_NPCGUIDButton"] = "查看目标生物的 GUID",
    ["tt_NPCInfoButton"] = "查看目标生物的信息",
    ["tt_NPCDemorph"] = "解除目标生物变形状态",
    ["tt_NPCMove"] = "将目标生物移动置您的位置",
    ["tt_NPCDel"] = "删除目标生物",
    ["tt_getguid"] = "显示目标生物的 GUID和ID",
    ["tt_NPCAdd"] = "在您的位置添加指定ID的生物的副本",
    ["tt_NPCGo"] = "将您传送到参数框中的NPC位置",
    ["tt_NPCMorph"] = "将目标生物变成指定#模型ID的形态\n|c777DDDFF参数：#DisplayID|r",
    ["tt_NPCSay"] = "让目标生物说指定的话\n|c777DDDFF参数：#内容|r",
    ["tt_NPCYell"] = "让目标生物喊指定的话\n|c777DDDFF参数：#内容|r",
    ["tt_NPCAura"] = "将指定光环添加到目标生物身上\n|c777DDDFF参数：#光环ID|r",
    ["tt_NPCUnaura"] = "将指定光环从目标生物身上解除\n|c777DDDFF参数：#光环ID|r",
    ["tt_PlayEmote"] = "播放左侧列表中的指定动作。",
    ["tt_DisplayUp"] = "将NPC DisplayID 增加1",
    ["tt_DisplayDown"] = "将NPC DisplayID 减少1",
    ["tt_IDUp"] = "NPC ID 增加1",
    ["tt_IDDown"] = "NPC ID减少1",
    ["tt_npcmodelzoominbutton"] = "放大目标生物模型大小",
    ["tt_npcmodelzoomoutbutton"] = "缩小目标生物模型大小",
    ["tt_npcbindsight"] = "将您的视野绑定到目标生物",
    ["tt_npcunbindsight"] = "单击解除与目标生物的视野绑定(也可在BUFF区右击该BUFF解除绑定)",
    ["tt_npccometome"] = "将目标生物传送至你的位置(该操作不会保存至数据库中)",
    ["tt_npcpossess"] = "无限期控制目标生物",
    ["tt_npcunpossess"] = "解除对目标生物的控制",
    ["tt_NPCFreezeButton"] = "停止所选NPC的移动，保存路线点",
    ["tt_NPCFreezeDelButton"] = "停止所选NPC的移动，不保存路线点",
    ["tt_WayEndAdd"] = "将路点添加到现有路径点组的末尾",
    ["tt_NPCAddWay"] = "将一个航点添加到路径点组中，生物GUID必须在下面的框中",
    ["tt_WayMAdd"] = "将航路点添加到选定的生物现有的移动路径点组",
    ["tt_WayModifyDel"] = "从生物存在的移动路径点组中删除所选的航点",
    ["tt_WayShow0"] = "隐藏选定生物路径点。",
    ["tt_WayShow1"] = "显示选定生物路径点。",
    ["tt_NPCAdd_WayShowOn"] = "显示目标生物路径点。",
    ["tt_NPCUnFreeze_RandomButton"] = "允许目标生物随机移动。",
    ["tt_NPCUnFreeze_WayButton"] = "允许目标生物按路径移动。",
    ["tt_MoveStackButton"] = "显示所选生物的移动路径点组。",
    --[[Control Labels]]
    ["Morph"] = "变形",
    ["ma_NPCKillButton"] = "杀死",
    ["ma_Respawn"] = "重生",
    ["ma_NPCDistanceButton"] = "查看距离",
    ["ma_NPCGUIDButton"] = "显示 GUID",
    ["ma_NPCInfoButton"] = "NPC 信息",
    ["ma_NPCDemorph"] = "解除变形",
    ["ma_NPCMove"] = "移动 NPC",
    ["ma_NPCDel"] = "删除 NPC",
    ["ma_getguid"] = "获取 GUID",
    ["ma_NPCAdd"] = "添加 NPC",
    ["ma_NPCGo"] = "传送到NPC",
    ["ma_NPCMorph"] = "变形",
    ["ma_NPCSay"] = "NPC 说",
    ["ma_NPCYell"] = "NPC 喊",
    ["ma_NPCAura"] = "NPC 光环",
    ["ma_NPCUnAura"] = "NPC 解除光环",
    ["ma_ParameterBox"] = "参数",
    ["ma_PlayEmote1"] = "播放动作",
    ["ma_PlayEmote2"] = "播放动作",
    ["ma_DistanceBox"] = "距离",
    ["ma_NPCBindsight"] = "绑定视野",
    ["ma_NPCUnBindsight"] = "解除视野",
    ["ma_NPCComeToMe"] = "传送到我",
    ["ma_npcpossess"] = "控制目标",
    ["ma_npcunpossess"] = "解除控制",
    ["ma_WayShow1"] = "显示路径点",
    ["ma_WayShow0"] = "隐藏路径点",
    ["ma_MoveStackButton"] = "展示路径",
    ["ma_NPCFreezeButton"] = "NPC 停留",
    ["ma_WayAllDel"] = "NPC 解除停留",
    ["ma_WayMAdd"] = "添加移动方式",
    ["ma_NPCUnFreeze_RandomButton"] = "随机移动",
    ["ma_NPCUnFreeze_WayButton"] = "路径移动",
    ["ma_WayMDel"] = "删除移动方式",
    ["ma_WayEndAdd"] = "最后添加方式",
    ["ma_WayAdd"] = "[添加方式]",
    ["ma_WayShow"] = "[显示方式]",
    --[[Other]]
    --[[GObjects Tab]]
    --[[Name]]
    ["tabmenu_GO"] = "物体",
    ["tt_GOButton"] = "切换至“物体”窗口。",
    --[[Tooltips]]
    ["tt_ObjGo"] = "到选定物体位置",
    ["tt_ObjAdd"] = "在您的位置和方向添加目标物体的副本",
    ["tt_ObjMove"] = "将目标物体移动到您的位置",
    ["tt_ObjTurn"] = "将目标物体转动到和您相同的方向",
    ["tt_ObjDel"] = "删除目标物体",
    ["tt_ObjNear"] = "显示您身边的物体信息",
    ["tt_ObjTarget"] = "最近的物体",
    ["tt_ObjActivate"] = "激活目标物体",
    ["tt_ObjAddTemp"] = "添加物体的临时副本",
    ["tt_ObjInfo"] = "获取物体的扩展信息",
    ["tt_ObjSetPhase"] = "设置物体方向",
    --[[Control Labels]]
    ["ma_OBJGo"] = "到物体",
    ["ma_OBJAdd"] = "添加物体",
    ["ma_OBJMove"] = "移动物体",
    ["ma_OBJTurn"] = "转动物体",
    ["ma_OBJDel"] = "删除物体",
    ["ma_OBJNear"] = "附近物体信息",
    ["ma_OBJTarget"] = "附近物体",
    ["ma_OBJActivate"] = "激活物体",
    ["ma_OBJAddTemp"] = "添加临时物体",
    ["ma_OBJInfo"] = "物体信息",
    ["ma_OBJSetPhase"] = "物体方向",
    --[[Other]]
    --[[Tele Tab]]
    --[[Name]]
    ["tabmenu_Tele"] = "传送",
    ["tt_TeleButton"] = "切换至“传送”窗口。",
    --[[Tooltips]]
    --[[Control Labels]]
    ["Zone"] = "|cFF00FF00区域:|r ",
    --[[Other]]
    ["ma_NoZones"] = "没有区域!",
    ["ma_NoSubZones"] = "没有子区域!",
    --[[Tickets Tab]]
    --[[Name]]
    ["tabmenu_ticket"] = "求助信息",
    ["tt_TicketButton"] = "切换至求助信息窗口。",
    --[[Tooltips]]
    --[[Control Labels]]
    ["ma_LoadTicketsButton"] = "刷新",
    ["ma_GetCharTicketButton"] = "召唤玩家",
    ["ma_GoCharTicketButton"] = "传送到玩家",
    ["ma_AnswerButton"] = "邮箱",
    ["ma_DeleteButton"] = "关闭",
    ["ma_TicketCount"] = "|cFF00FF00求助信息:|r ",
    ["ma_TicketsNoNew"] = "你没有新的求助信息。",
    ["ma_TicketsNewNumber"] = "你有 |cffeda55f%s|r 新求助信息!",
    ["ma_TicketsGoLast"] = "转到最新的求助信息 (%s).",
    ["ma_TicketsGetLast"] = "打开 %s 求助信息。",
    ["ma_TicketsInfoPlayer"] = "|cFF00FF00玩家:|r ",
    ["ma_TicketsInfoStatus"] = "|cFF00FF00状态:|r ",
    ["ma_TicketsInfoAccount"] = "|cFF00FF00帐号:|r ",
    ["ma_TicketsInfoAccLevel"] = "|cFF00FF00帐号等级:|r ",
    ["ma_TicketsInfoLastIP"] = "|cFF00FF00Last IP:|r ",
    ["ma_TicketsInfoPlayedTime"] = "|cFF00FF00游戏时间:|r ",
    ["ma_TicketsInfoLevel"] = "|cFF00FF00等级:|r ",
    ["ma_TicketsInfoMoney"] = "|cFF00FF00金钱:|r ",
    ["ma_TicketsInfoLatency"] = "|cFF00FF00延迟:|r ",
    ["ma_TicketsNoInfo"] = "没有求助信息...",
    ["ma_TicketsNotLoaded"] = "没有载入求助信息...",
    ["ma_TicketsNoTickets"] = "没有可用的求助信息!",
    ["ma_TicketTicketLoaded"] = "|cFF00FF00求助信息-Nr:|r %s\n\n玩家信息\n\n",
    ["ma_Reload"] = "刷新",
    ["ma_LoadMore"] = "装载更多...",
    ["tt_TicketOn"] = "提示新求助信息.",
    ["tt_TicketOff"] = "不提示新求助信息.",
    --[[Other]]
    --[[Misc Tab]]
    --[[Name]]
    ["tabmenu_Misc"] = "杂项",
    ["tt_MiscButton"] = "切换至“杂项”窗口。",
    --[[Tooltips]]
    ["tt_FrmTrSlider"] = "改变窗体透明度。",
    ["tt_BtnTrSlider"] = "改变按钮透明度。",
    ["tt_windowismovable"] = "允许移动窗口",
    --[[Control Labels]]
    ["cmd_toggle"] = "切换至主窗口。",
    ["cmd_transparency"] = "切换基本透明度 (0.5或1.0)",
    ["cmd_tooltip"] = "切换是否显示或不显示工具提示的按钮",
    --[[Other]]
    ["ma_WeatherFine"] = "晴",
    ["ma_WeatherFog"] = "雾",
    ["ma_WeatherRain"] = "雨",
    ["ma_WeatherSnow"] = "雪",
    ["ma_WeatherSand"] = "沙尘",
    --[[Server Tab]]
    ["tabmenu_server"] = "服务器",
    ["tt_ServerButton"] = "单击显示各种服务器信息, 或执行服务器相关的操作.",
    --[[Tooltips]]
    ["tt_AnnounceButton"] = "单击发送一个系统消息.",
    ["tt_ShutdownButton"] = "单击将关闭服务器. 如不输入倒计时时间, 将立刻关闭服务器!",
    --[[Control Labels]]
    ["ma_AnnounceButton"] = "公告",
    ["ma_ShutdownButton"] = "关闭服务器!",
    --[[Other]]
    --[[Log Tab]]
    ["tabmenu_log"] = "日志",
    ["tt_LogButton"] = "单击显示AzerothCoreAdmin所做的各种操作的记录.",
    --[[Tooltips]]
    --[[Control Labels]]
    --[[Other]]
    --[[Who Tab]]
    ["tabmenu_who"] = "玩家",
    ["tt_whotabmenubutton"] = "单击显示允许控制玩家命令的窗口.",
    --[[Tooltips]]
    ["tt_who_customize"] = "在下次登陆时，更改目标角色外貌或性别",
    ["tt_who_chardelete"] = "|c00FF0000谨慎|r删除指定角色",
    ["tt_who_charrename"] = "在下次登陆时，更改目标角色名称",
    ["tt_who_permbanbutton"] = "目标角色|cFFF00000永久封号|r",
    ["tt_who_1daybanbutton"] = "目标角色封号|c000000FF1天|r",
    ["tt_who_jailabutton"] = "在联盟监狱中监禁这个角色",
    ["tt_who_jailhbutton"] = "在部落监狱中监禁这个角色",
    ["tt_who_unjailbutton"] = "解禁这个角色",
    --[[Control Labels]]
    ["ma_ShowWhoButton"] = "刷新",
    ["ma_resetwhobutton"] = "重置",
    ["ma_acctdetail"] = "帐号:",
    ["ma_chardetail"] = "角色:",
    ["ma_whisperbutton"] = "悄悄话",
    ["ma_SummonWhoButton"] = "召唤",
    ["ma_GoCharWhoButton"] = "传送至",
    ["ma_AnswerWhoButton"] = "邮件",
    ["ma_who_customize"] = "定制外观",
    ["ma_who_chardelete"] = "|c00FF0000删除角色|r",
    ["ma_who_charrename"] = "更改名称",
    ["ma_DeleteWhoButton"] = "踢出",
    ["ma_who_1daybanbutton"] = "封号|c000000FF1天|r",
    ["ma_who_permbanbutton"] = "|cFFF00000永久封号|r",
    ["ma_who_jailabutton"] = "联盟监狱",
    ["ma_who_jailhbutton"] = "部落监狱",
    ["ma_who_unjailbutton"] = "解禁角色" --[[Tooltips]], --Place holder for future update* --["tabmenu_changelog"] = "ChangeLog",
    --[[Other]]
    --[[ChangeLog Tab]] --[[Control Labels]]
    --[[Other]]
    --[[Pop UPs]]
    --[[General]]
    --[[ToolTips]]
    ["tt_ItemButton"] = "单击切换搜索物品的窗口。",
    ["tt_ItemSetButton"] = "单击显示套装物品搜索窗口。",
    ["tt_SpellButton"] = "单击切换搜索法术的窗口。",
    ["tt_QuestButton"] = "单击显示任务搜索窗口。",
    ["tt_CreatureButton"] = "单击显示生物搜索窗口。",
    ["tt_ObjectButton"] = "单击显示物体搜索窗口。",
    ["tt_SearchDefault"] = "请输入关键字来进行搜索。",
    ["tt_SkillButton"] = "固定弹出技能搜索窗口。",
    --[[Labels]]
    ["ma_ItemButton"] = "物品搜索",
    ["ma_ItemSetButton"] = "套装搜索",
    ["ma_SpellButton"] = "法术搜索",
    ["ma_QuestButton"] = "任务搜索",
    ["ma_CreatureButton"] = "生物搜索",
    ["ma_ObjectButton"] = "物件搜索",
    ["ma_TeleSearchButton"] = "传送点搜索",
    ["ma_MailRecipient"] = "收信箱",
    ["ma_Mail"] = "发送一个邮件",
    ["ma_Send"] = "发送",
    ["ma_MailSubject"] = "题目",
    ["ma_MailYourMsg"] = "邮件内容",
    ["ma_SearchButton"] = "搜索...",
    ["ma_ResetButton"] = "重置",
    ["ma_FavAdd"] = "添加选中",
    ["ma_FavRemove"] = "删除选中",
    ["ma_SelectAllButton"] = "选择全部",
    ["ma_DeselectAllButton"] = "删除全部",
    ["ma_MailBytesLeft"] = "剩余字数: ",
    ["ma_SkillButton"] = "技能搜索",
    ["ma_SkillVar1Button"] = "技能",
    ["ma_SkillVar2Button"] = "最大技能",
    ["ma_ItemVar1Button"] = "数量",
    ["ma_ObjectVar1Button"] = "掉落表",
    ["ma_ObjectVar2Button"] = "刷新时间",
    ["ma_NoFavorites"] = "当前没有保存定制!",
    ["favoriteResults"] = "|cFF00FF00定制:|r ",
    --[[Deprecated, but may be used again.]]
    ["ma_LearnAllButton"] = "所有法术",
    ["ma_LearnCraftsButton"] = "所有专业技能和配方",
    ["ma_LearnGMButton"] = "默认的 GM 法术",
    ["ma_LearnClassButton"] = "所有本职业法术",
    ["ma_Online"] = "在线",
    ["ma_Offline"] = "离线",
    --[[Linkifier]]
    ["lfer_Spawn"] = "重置",
    ["lfer_List"] = "列表",
    ["lfer_Reload"] = "重载",
    ["lfer_Goto"] = "去",
    ["lfer_Move"] = "移动",
    ["lfer_Turn"] = "转动",
    ["lfer_Delete"] = "删除",
    ["lfer_Teleport"] = "传送",
    ["lfer_Morph"] = "变形",
    ["lfer_Add"] = "添加",
    ["lfer_Remove"] = "删除",
    ["lfer_Learn"] = "学习",
    ["lfer_Unlearn"] = "忘却",
    ["lfer_Error"] = "错误搜索字符串匹配，发生错误或是找不到此类型"
  }
end
