## ADDED Requirements

### Requirement: 放大字体
配置 SHALL 提供快捷键在运行时增大字体大小。

#### Scenario: macOS 放大字体
- **WHEN** 用户在 macOS 上按下 `CMD+=`
- **THEN** 终端字体大小增大一个步进

#### Scenario: Windows/Linux 放大字体
- **WHEN** 用户在 Windows 或 Linux 上按下 `CTRL+=`
- **THEN** 终端字体大小增大一个步进

### Requirement: 缩小字体
配置 SHALL 提供快捷键在运行时减小字体大小。

#### Scenario: macOS 缩小字体
- **WHEN** 用户在 macOS 上按下 `CMD+-`
- **THEN** 终端字体大小减小一个步进

#### Scenario: Windows/Linux 缩小字体
- **WHEN** 用户在 Windows 或 Linux 上按下 `CTRL+-`
- **THEN** 终端字体大小减小一个步进

### Requirement: 重置字体大小
配置 SHALL 提供快捷键将字体大小重置为配置中的默认值。

#### Scenario: macOS 重置字体大小
- **WHEN** 用户在 macOS 上按下 `CMD+0`
- **THEN** 终端字体大小恢复为 `wezterm.lua` 中设置的默认值

#### Scenario: Windows/Linux 重置字体大小
- **WHEN** 用户在 Windows 或 Linux 上按下 `CTRL+0`
- **THEN** 终端字体大小恢复为 `wezterm.lua` 中设置的默认值
