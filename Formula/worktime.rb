class Worktime < Formula
  desc "macOS 上下班时间监测菜单栏工具，通过 pmset 日志识别上下班时间"
  homepage "https://github.com/Soarkey/worktime"
  url "https://github.com/Soarkey/worktime/releases/download/v0.1.2/worktime_0.1.2_darwin_arm64.tar.gz"
  sha256 "031cc56adafa2646e0ee39538103710b3e89ffd4537894dcfa55299bb624a5e8"
  license "MIT"

  depends_on :macos

  def install
    bin.install "worktime"
  end

  test do
    assert_match "上下班时间监测", shell_output("#{bin}/worktime --help")
  end
end
