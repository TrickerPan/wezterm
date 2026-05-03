### Requirement: 水平分割当前 Pane
配置 SHALL 提供快捷键将当前 Pane 水平分割（上下布局）。

#### Scenario: macOS 水平分割
- **WHEN** 用户在 macOS 上按下 `CMD+Shift+-`
- **THEN** 当前 Pane 被水平分割为上下两个 Pane，焦点移至新 Pane

#### Scenario: Windows/Linux 水平分割
- **WHEN** 用户在 Windows 或 Linux 上按下 `CTRL+Shift+-`
- **THEN** 当前 Pane 被水平分割为上下两个 Pane，焦点移至新 Pane

### Requirement: 垂直分割当前 Pane
配置 SHALL 提供快捷键将当前 Pane 垂直分割（左右布局）。

#### Scenario: macOS 垂直分割
- **WHEN** 用户在 macOS 上按下 `CMD+Shift+\`
- **THEN** 当前 Pane 被垂直分割为左右两个 Pane，焦点移至新 Pane

#### Scenario: Windows/Linux 垂直分割
- **WHEN** 用户在 Windows 或 Linux 上按下 `CTRL+Shift+\`
- **THEN** 当前 Pane 被垂直分割为左右两个 Pane，焦点移至新 Pane

### Requirement: Pane 间导航
配置 SHALL 提供快捷键在各 Pane 间按方向跳转焦点。

#### Scenario: 向左跳转
- **WHEN** 用户按下 `ALT+LeftArrow`（macOS 和 Windows/Linux 相同）
- **THEN** 焦点移至当前 Pane 左侧的 Pane

#### Scenario: 向右跳转
- **WHEN** 用户按下 `ALT+RightArrow`
- **THEN** 焦点移至当前 Pane 右侧的 Pane

#### Scenario: 向上跳转
- **WHEN** 用户按下 `ALT+UpArrow`
- **THEN** 焦点移至当前 Pane 上方的 Pane

#### Scenario: 向下跳转
- **WHEN** 用户按下 `ALT+DownArrow`
- **THEN** 焦点移至当前 Pane 下方的 Pane

### Requirement: Pane 大小调整
配置 SHALL 提供快捷键调整当前 Pane 的大小。

#### Scenario: macOS 向右扩展
- **WHEN** 用户在 macOS 上按下 `CMD+ALT+RightArrow`
- **THEN** 当前 Pane 向右扩展 5 个单元格

#### Scenario: Windows/Linux 向右扩展
- **WHEN** 用户在 Windows 或 Linux 上按下 `CTRL+ALT+RightArrow`
- **THEN** 当前 Pane 向右扩展 5 个单元格

#### Scenario: macOS 向左缩小
- **WHEN** 用户在 macOS 上按下 `CMD+ALT+LeftArrow`
- **THEN** 当前 Pane 向左缩小 5 个单元格

#### Scenario: Windows/Linux 向左缩小
- **WHEN** 用户在 Windows 或 Linux 上按下 `CTRL+ALT+LeftArrow`
- **THEN** 当前 Pane 向左缩小 5 个单元格
