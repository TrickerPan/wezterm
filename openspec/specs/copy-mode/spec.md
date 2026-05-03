### Requirement: 进入复制模式
配置 SHALL 提供快捷键进入 WezTerm 的键盘驱动复制模式，以便无鼠标选择和复制文本。

#### Scenario: macOS 进入复制模式
- **WHEN** 用户在 macOS 上按下 `CMD+Shift+X`
- **THEN** 当前 Pane 进入复制模式，光标可用键盘移动

#### Scenario: Windows/Linux 进入复制模式
- **WHEN** 用户在 Windows 或 Linux 上按下 `CTRL+Shift+X`
- **THEN** 当前 Pane 进入复制模式，光标可用键盘移动
