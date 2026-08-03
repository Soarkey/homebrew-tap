class Worktime < Formula
  desc "macOS 上下班时间监测菜单栏工具，通过 pmset 日志识别上下班时间"
  homepage "https://github.com/Soarkey/worktime"
  url "https://github.com/Soarkey/worktime/releases/download/v0.2.1/worktime_0.2.1_darwin_arm64.tar.gz"
  version "0.2.1"
  sha256 "2b8cd60b4a8dd674d04330c592ae5d97b6c3f81c05a2d9bfdde7318674ddefe7"

  def install
    bin.install "worktime"
  end

  test do
    assert_match "上下班时间监测", shell_output("#{bin}/worktime --help")
  end
end
