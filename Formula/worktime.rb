class Worktime < Formula
  desc "macOS 上下班时间监测菜单栏工具，通过 pmset 日志识别上下班时间"
  homepage "https://github.com/Soarkey/worktime"
  url "https://github.com/Soarkey/worktime/releases/download/v0.1.7.1/worktime_0.1.7.1_darwin_arm64.tar.gz"
  version "0.1.7.1"
  sha256 "b8c7bda038e60dab563d7800f6fbef6f8b6293e66210b1e92fa5209350b304ec"

  def install
    bin.install "worktime"
  end

  test do
    assert_match "上下班时间监测", shell_output("#{bin}/worktime --help")
  end
end
