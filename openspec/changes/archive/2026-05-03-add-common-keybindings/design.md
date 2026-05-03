## Context

`config/keys.lua` 目前仅定义了 4 个快捷键（关闭 Pane、新建窗口、新建标签页、显示 Launcher），平台检测已通过 `helpers/basic.lua` 的 `is_mac` 标志实现。新快捷键将沿用相同的平台感知模式，直接扩展现有的 `keys` 表，无需引入新模块或依赖。

## Goals / Non-Goals

**Goals:**
- 在 `config/keys.lua` 中新增分屏（水平/垂直）、Pane 导航、Pane 大小调整、复制模式、字体大小控制共 5 类快捷键
- 保持 macOS（`CMD`）与 Windows/Linux（`CTRL`）的双平台一致性
- 不改变现有配置结构和模块接口

**Non-Goals:**
- 不重构 `keys.lua` 的整体结构
- 不引入第三方快捷键管理库
- 不为所有 WezTerm 可用 Action 做全量映射

## Decisions

### 1. 直接扩展现有 keys 表，而非拆分子模块

**决定**：在 `keys.lua` 中的 macOS 和 Windows/Linux 两个分支各自追加新条目。  
**理由**：当前文件体量小，拆分会增加不必要的间接层；若未来快捷键数量激增再重构更合适。  
**备选方案**：按功能类别拆分为多个文件（如 `keys/pane.lua`、`keys/font.lua`）——暂不采用，过度设计。

### 2. 字体大小快捷键使用 `IncreaseFontSize` / `DecreaseFontSize` / `ResetFontSize`

**决定**：直接使用 WezTerm 内置 Action，无需手动读写 `font_size`。  
**理由**：内置 Action 安全、无副作用，且在所有平台行为一致。

### 3. Pane 导航使用方向键 + 修饰键组合

**决定**：`ALT+方向键` 用于 Pane 间跳转（macOS 同样使用 `ALT` 以避免与系统 `CMD+方向键` 冲突）。  
**理由**：`ALT+方向键` 在 macOS 和 Windows/Linux 终端中通常未被系统占用，冲突风险低。

## Risks / Trade-offs

- [快捷键冲突] 部分组合键可能与 Shell（如 zsh、fish）或应用内快捷键冲突 → 文档中注明，用户可自行调整
- [ALT 键在 macOS 的行为] macOS 的 `ALT`（Option）键在某些输入法下会触发特殊字符输入 → WezTerm 默认已正确处理，通常不影响快捷键绑定
