# Glint Homebrew Tap

Glint 面向中文母语者，在输入法候选旁显示对应的英文翻译。

这是由 Glint 项目维护的**实验性** Homebrew Cask。当前版本仍使用 ad-hoc
测试签名，尚未完成 Apple 公证。

安装或升级后，Cask 会移除 `com.apple.quarantine`，让 Gatekeeper 不再拦截首次
启动。这会跳过 macOS 对下载 App 的首次安全检查，因此只应使用项目控制并经过
审查的 Tap 和 Release。

## 安装

要求 macOS 15 或更高版本，且仅支持 Apple Silicon。

```sh
brew tap jsogn/glint
brew trust --cask jsogn/glint/glint
brew install --cask jsogn/glint/glint
```

如果 Homebrew 未要求信任该第三方 Tap，可以跳过 `brew trust`。

安装完成后请按照 App 内提示授予辅助功能权限。

## 升级

```sh
brew update
brew upgrade --cask jsogn/glint/glint
```

升级完成后 Cask 会再次移除新版本的 quarantine 标记。

## 卸载

```sh
brew uninstall --cask jsogn/glint/glint
```

卸载 Cask 不会删除 Glint 的词典、模型或设置数据。

## 维护

Tap 和发布渠道由 Glint 项目控制，不开放仓库写权限。外部贡献通过 Pull
Request 提交；每个正式 Release 发布后，需要同步更新
`Casks/glint.rb` 中的版本和 SHA256。

完成 Developer ID 签名和 Apple 公证后，将移除实验性提示、quarantine 处理及
官方 [`homebrew/cask`](https://github.com/Homebrew/homebrew-cask) 收录限制。
