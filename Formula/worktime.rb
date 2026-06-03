class Worktime < Formula
  desc "macOS 上下班时间监测菜单栏工具，通过 pmset 日志识别上下班时间"
  homepage "https://github.com/Soarkey/worktime"
  url "https://github.com/Soarkey/worktime/releases/download/v0.1.7/worktime_0.1.7_darwin_arm64.tar.gz"
  version "0.1.7"
  sha256 "0f59f183f2657be47d7c81519214a16e13a510f92c159bd9478446e6d2a6ba44"

  def install
    bin.install "worktime"
  end

  test do
    assert_match "上下班时间监测", shell_output("#{bin}/worktime --help")
  end
end
