class Worktime < Formula
  desc "macOS 上下班时间监测菜单栏工具，通过 pmset 日志识别上下班时间"
  homepage "https://github.com/Soarkey/worktime"
  url "https://github.com/Soarkey/worktime/releases/download/v0.1.5/worktime_0.1.5_darwin_arm64.tar.gz"
  version "0.1.5"
  sha256 "f19b978a0db51ab51a946d54fdeea86dab1c3c2aac5e1801421c8053ea4f2511"

  def install
    bin.install "worktime"
  end

  test do
    assert_match "上下班时间监测", shell_output("#{bin}/worktime --help")
  end
end
