## ADDED Requirements

### Requirement: 智能右键复制/粘贴

当用户在 pane 中点击鼠标右键时，系统 SHALL 根据当前 pane 是否有选中内容执行以下操作：
- 若有选中文本，执行复制操作，将选中内容复制到系统剪贴板
- 若无选中文本，执行粘贴操作，将系统剪贴板内容粘贴到终端

#### Scenario: 有选中内容时右键复制

- **WHEN** 当前 pane 中有选中的文本
- **THEN** 点击鼠标右键后，选中内容被复制到系统剪贴板，且不执行粘贴操作

#### Scenario: 无选中内容时右键粘贴

- **WHEN** 当前 pane 中没有选中的文本
- **THEN** 点击鼠标右键后，系统剪贴板内容被粘贴到终端，且不执行复制操作

### Requirement: 跨平台支持

智能右键功能 SHALL 在 Windows、macOS、Linux 三个平台上行为一致。

#### Scenario: 跨平台行为一致

- **WHEN** 在 Windows、macOS 或 Linux 上点击鼠标右键
- **THEN** 右键行为与平台无关，始终为智能复制/粘贴
