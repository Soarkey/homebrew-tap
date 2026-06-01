# homebrew-tap

Homebrew tap for [worktime](https://github.com/Soarkey/worktime).

## 安装

```bash
brew tap Soarkey/tap https://github.com/Soarkey/homebrew-tap
brew install worktime
```

## 更新

```bash
brew update
brew upgrade worktime
```

## 发版维护

发布新 tag 后，更新 Formula 中的 `url`、`version`、`sha256` 三个字段：

```bash
VERSION=<VERSION>
# 计算 sha256
curl -sL "https://github.com/Soarkey/worktime/releases/download/v${VERSION}/worktime_${VERSION}_darwin_arm64.tar.gz" | shasum -a 256
```

将输出的值填入 `Formula/worktime.rb` 对应字段。
