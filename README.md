# homebrew-tap

Homebrew tap for [worktime](https://github.com/Soarkey/worktime).

## 安装

```bash
brew tap Soarkey/tap https://github.com/Soarkey/homebrew-tap
brew install worktime
```

## 使用

```bash
brew services start worktime   # 启动后台服务（开机自启）
brew services stop worktime    # 停止后台服务
```

## 更新

```bash
brew update
brew upgrade worktime
```

## 发版维护

发布新 tag 后，更新 Formula 中的 `url` 和 `sha256`：

```bash
curl -sL https://github.com/Soarkey/worktime/archive/refs/tags/v<VERSION>.tar.gz | shasum -a 256
```

将输出的 hash 填入 `Formula/worktime.rb` 的 `sha256` 字段。
