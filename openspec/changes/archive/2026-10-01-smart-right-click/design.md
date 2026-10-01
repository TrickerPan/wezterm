## Context

当前 WezTerm 配置只定义了键盘快捷键（`config.keys`），没有自定义鼠标行为。WezTerm 提供 `config.mouse_bindings` API 来绑定鼠标事件。

## Goals / Non-Goals

**Goals:**
- 右键点击时，若有选中文本则复制，无选中文本则粘贴
- 跨平台一致行为（Windows、macOS、Linux）

**Non-Goals:**
- 不修改其他鼠标按键行为
- 不修改键盘快捷键

## Decisions

1. **使用 `config.mouse_bindings` 添加右键处理**
   - WezTerm 原生支持 `config.mouse_bindings` 表
   - 绑定 `Down` 事件（按下触发），设 `mods="NONE"`
   - 替代方案：`Up` 事件——但 `Down` 响应更快，用户体感更好

2. **使用 `wezterm.action_callback` 实现条件逻辑**
   - 在回调中通过 `window:get_selection_text_for_pane(pane)` 检测是否有选中内容
   - 有选中：调用 `wezterm.action.CopyTo("Clipboard")`
   - 无选中：调用 `wezterm.action.PasteFrom("Clipboard")`
   - 替代方案：WezTerm 内置的 `CompleteSelectionOrOpenLinkAtMouseCursor` 只复制选中内容，不支持后备粘贴

3. **单独模块管理鼠标配置**
   - 新增 `config/mouse.lua`，遵循现有的模块模式（`M.setup(config)`）
   - 在 `wezterm.lua` 中按 `require("config.mouse")` 引入
   - 保持与 `config/keys.lua` 一致的组织结构

## Risks / Trade-offs

- **右键菜单丧失**：默认右键打开 WezTerm 上下文菜单的行为将被覆盖 → 用户仍可通过其他方式访问命令面板（`Cmd/Ctrl+Shift+P`）
- **粘贴安全**：无选中内容时自动粘贴可能导致意外粘贴敏感内容 → 符合现有终端工具的通用行为
