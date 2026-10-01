### Requirement: 左右分割当前 Pane
配置 SHALL 提供快捷键将当前 Pane 左右分割（新 Pane 出现在右侧）。

#### Scenario: macOS 左右分割
- **WHEN** 用户在 macOS 上按下 `CMD+D`
- **THEN** 当前 Pane 被左右分割为两个 Pane，新 Pane 出现在右侧，焦点移至新 Pane

#### Scenario: Windows/Linux 左右分割
- **WHEN** 用户在 Windows 或 Linux 上按下 `ALT+Shift++`
- **THEN** 当前 Pane 被左右分割为两个 Pane，新 Pane 出现在右侧，焦点移至新 Pane

### Requirement: 上下分割当前 Pane
配置 SHALL 提供快捷键将当前 Pane 上下分割（新 Pane 出现在下方）。

#### Scenario: macOS 上下分割
- **WHEN** 用户在 macOS 上按下 `CMD+Shift+D`
- **THEN** 当前 Pane 被上下分割为两个 Pane，新 Pane 出现在下方，焦点移至新 Pane

#### Scenario: Windows/Linux 上下分割
- **WHEN** 用户在 Windows 或 Linux 上按下 `ALT+Shift+-`
- **THEN** 当前 Pane 被上下分割为两个 Pane，新 Pane 出现在下方，焦点移至新 Pane

### Requirement: Pane 间导航
配置 SHALL 提供快捷键在各 Pane 间按方向跳转焦点。

#### Scenario: 向左跳转
- **WHEN** 用户在 macOS 上按下 `CMD+OPT+LeftArrow`，或在 Windows/Linux 上按下 `ALT+LeftArrow`
- **THEN** 焦点移至当前 Pane 左侧的 Pane

#### Scenario: 向右跳转
- **WHEN** 用户在 macOS 上按下 `CMD+OPT+RightArrow`，或在 Windows/Linux 上按下 `ALT+RightArrow`
- **THEN** 焦点移至当前 Pane 右侧的 Pane

#### Scenario: 向上跳转
- **WHEN** 用户在 macOS 上按下 `CMD+OPT+UpArrow`，或在 Windows/Linux 上按下 `ALT+UpArrow`
- **THEN** 焦点移至当前 Pane 上方的 Pane

#### Scenario: 向下跳转
- **WHEN** 用户在 macOS 上按下 `CMD+OPT+DownArrow`，或在 Windows/Linux 上按下 `ALT+DownArrow`
- **THEN** 焦点移至当前 Pane 下方的 Pane

### Requirement: Pane 大小调整
配置 SHALL 提供快捷键以 5 个单元格为步进调整当前 Pane 的大小。

#### Scenario: macOS 向右扩展
- **WHEN** 用户在 macOS 上按下 `CTRL+CMD+RightArrow`
- **THEN** 当前 Pane 向右扩展 5 个单元格

#### Scenario: Windows/Linux 向右扩展
- **WHEN** 用户在 Windows 或 Linux 上按下 `ALT+Shift+RightArrow`
- **THEN** 当前 Pane 向右扩展 5 个单元格

#### Scenario: macOS 向左缩小
- **WHEN** 用户在 macOS 上按下 `CTRL+CMD+LeftArrow`
- **THEN** 当前 Pane 向左缩小 5 个单元格

#### Scenario: Windows/Linux 向左缩小
- **WHEN** 用户在 Windows 或 Linux 上按下 `ALT+Shift+LeftArrow`
- **THEN** 当前 Pane 向左缩小 5 个单元格
