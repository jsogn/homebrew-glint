# Glint Homebrew Tap

Glint 面向中文母语者，在输入法候选旁显示对应的英文翻译。

这是由 Glint 项目维护的**实验性** Homebrew Cask。当前版本仍使用 ad-hoc
测试签名，尚未完成 Apple 公证；Homebrew 不会绕过 macOS Gatekeeper。

## 安装

要求 macOS 15 或更高版本，且仅支持 Apple Silicon。

```sh
brew tap jsogn/glint
brew trust --cask jsogn/glint/glint
brew install --cask jsogn/glint/glint
```

如果 Homebrew 未要求信任该第三方 Tap，可以跳过 `brew trust`。

当前安装包首次启动时，macOS 可能要求在“系统设置 > 隐私与安全性”中允许
Glint 运行。安装后请按照 App 内提示授予辅助功能权限。

## 升级

```sh
brew update
brew upgrade --cask jsogn/glint/glint
```

## 卸载

```sh
brew uninstall --cask jsogn/glint/glint
```

卸载 Cask 不会删除 Glint 的词典、模型或设置数据。

## 维护

Tap 和发布渠道由 Glint 项目控制，不开放仓库写权限。外部贡献通过 Pull
Request 提交；每个正式 Release 发布后，需要同步更新
`Casks/glint.rb` 中的版本和 SHA256。

当前 Cask 不自动移除 quarantine，也不会绕过 Gatekeeper。完成 Developer ID
签名和 Apple 公证后，将移除实验性提示并重新评估官方
[`homebrew/cask`](https://github.com/Homebrew/homebrew-cask) 收录条件。
