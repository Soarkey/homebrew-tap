class Worktime < Formula
  desc "macOS 上下班时间监测菜单栏工具，通过 pmset 日志识别上下班时间"
  homepage "https://github.com/Soarkey/worktime"
  url "https://github.com/Soarkey/worktime/releases/download/v0.2.0/worktime_0.2.0_darwin_arm64.tar.gz"
  version "0.2.0"
  sha256 "9da1b5bcba8809454aea305b4fecb97a8cb727b449fb25bcf95df7e4e3c931c1"

  def install
    bin.install "worktime"
  end

  test do
    assert_match "上下班时间监测", shell_output("#{bin}/worktime --help")
  end
end
