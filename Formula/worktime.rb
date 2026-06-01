class Worktime < Formula
  desc "macOS 上下班时间监测菜单栏工具，通过 pmset 日志识别上下班时间"
  homepage "https://github.com/Soarkey/worktime"
  url "https://github.com/Soarkey/worktime/releases/download/v0.1.4/worktime_0.1.4_darwin_arm64.tar.gz"
  sha256 "4da8d00c814958779f89e34bbb5c1a766f45b4ff257fec27bd9395befa85f77e"
  license "MIT"

  depends_on :macos

  def install
    bin.install "worktime"
  end

  test do
    assert_match "上下班时间监测", shell_output("#{bin}/worktime --help")
  end
end
