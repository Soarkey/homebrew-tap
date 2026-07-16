class Worktime < Formula
  desc "macOS 上下班时间监测菜单栏工具，通过 pmset 日志识别上下班时间"
  homepage "https://github.com/Soarkey/worktime"
  url "https://github.com/Soarkey/worktime/releases/download/v0.1.9/worktime_0.1.9_darwin_arm64.tar.gz"
  version "0.1.9"
  sha256 "97c58165b3b1ce87caecd43d9b774e680b4eeb8d58c47ac0f141365125ec414e"

  def install
    bin.install "worktime"
  end

  test do
    assert_match "上下班时间监测", shell_output("#{bin}/worktime --help")
  end
end
