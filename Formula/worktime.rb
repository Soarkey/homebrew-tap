class Worktime < Formula
  desc "macOS 上下班时间监测菜单栏工具，通过 pmset 日志识别上下班时间"
  homepage "https://github.com/Soarkey/worktime"
  url "https://github.com/Soarkey/worktime/releases/download/v0.1.6/worktime_0.1.6_darwin_arm64.tar.gz"
  version "0.1.6"
  sha256 "a8c7e42208c494d5f6bc309fd78407ae82f7cdbf45be7919ac1ef2baf195eb53"

  def install
    bin.install "worktime"
  end

  test do
    assert_match "上下班时间监测", shell_output("#{bin}/worktime --help")
  end
end
