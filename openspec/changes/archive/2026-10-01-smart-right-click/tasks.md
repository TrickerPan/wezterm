## 1. 创建鼠标配置模块

- [x] 1.1 新建 `config/mouse.lua`，使用标准模块模式（`M.setup(config)`）
- [x] 1.2 在 `mouse.lua` 中定义右键智能处理回调：有选中内容时复制，无选中内容时粘贴
- [x] 1.3 将回调绑定到 `config.mouse_bindings`，触发条件为右键点击（`Down` 事件）

## 2. 集成到主配置

- [x] 2.1 在 `wezterm.lua` 中 `require("config.mouse")` 并调用 `mouse.setup(config)`
