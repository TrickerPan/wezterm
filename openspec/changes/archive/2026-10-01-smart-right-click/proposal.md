## Why

当前 WezTerm 配置没有自定义鼠标右键行为。默认右键行为（打开上下文菜单）在终端场景下不够实用。改为智能右键可以让用户更高效地完成复制/粘贴操作——这是终端最常用的两个操作。

## What Changes

- 新增鼠标右键事件绑定：如果当前 pane 有选中文本，执行复制（CopyTo Clipboard）；如果没有选中文本，执行粘贴（PasteFrom Clipboard）
- 跨平台支持 Windows、macOS、Linux

## Capabilities

### New Capabilities

- `smart-right-click`: 智能鼠标右键——有选中内容时复制，无选中内容时粘贴

### Modified Capabilities

<!-- 无现有 spec 需要修改 -->

## Impact

- 修改 `config/keys.lua`：新增鼠标事件配置
- 可能需要在 `wezterm.lua` 中注册鼠标事件处理
