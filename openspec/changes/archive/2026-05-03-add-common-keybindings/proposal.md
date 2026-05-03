## Why

当前快捷键配置仅覆盖了最基础的窗口/标签页操作，缺少分屏、导航、复制模式等常用功能。扩充快捷键设置可以显著提升终端使用效率，减少鼠标依赖。

## What Changes

- 新增分屏快捷键：水平分割和垂直分割当前 Pane
- 新增 Pane 导航快捷键：通过方向键在各 Pane 间跳转
- 新增 Pane 大小调整快捷键
- 新增进入复制模式的快捷键
- 新增字体大小调整快捷键（放大/缩小/重置）
- 所有新增快捷键保持平台感知（macOS 使用 `CMD`，Windows/Linux 使用 `CTRL`）

## Capabilities

### New Capabilities

- `pane-management`: 分割 Pane、在 Pane 间导航、调整 Pane 大小
- `copy-mode`: 通过快捷键进入键盘驱动的文本复制模式
- `font-size-control`: 运行时动态调整字体大小

### Modified Capabilities

<!-- 无已有 Spec 需要修改 -->

## Impact

- 修改 `config/keys.lua`：在 macOS 和 Windows/Linux 的 keys 表中各新增快捷键条目
- 不涉及外部依赖或 API 变更
- 不引入 Breaking Change
