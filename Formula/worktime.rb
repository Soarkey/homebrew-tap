class Worktime < Formula
  desc "macOS 上下班时间监测菜单栏工具，通过 pmset 日志识别上下班时间"
  homepage "https://github.com/Soarkey/worktime"
  url "https://github.com/Soarkey/worktime/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d94929c43813987066c58ad9be37595343fff55ece03fd7b8c8f74e8cbd06957"
  license "MIT"
  head "https://github.com/Soarkey/worktime.git", branch: "main"

  depends_on "go" => :build
  depends_on :macos

  def install
    ENV["GOPROXY"] = "https://goproxy.cn,direct"
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/worktime"
  end

  def post_install
    system bin/"worktime", "--help"
  end

  test do
    assert_match "上下班时间监测", shell_output("#{bin}/worktime --help")
  end
end