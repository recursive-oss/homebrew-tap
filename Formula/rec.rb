class Rec < Formula
  desc "Run Recursive's Flint model locally and launch coding agents"
  homepage "https://github.com/recursive-oss/rec"
  url "https://github.com/recursive-oss/rec/releases/download/v0.1.1/rec-darwin-arm64"
  sha256 "76874faf4ba16b1907ebef0d6a92147a1f81b95df92d805ae5b98019df265bed"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  conflicts_with "sox", "sox_ng", because: "both install a `rec` binary"

  def install
    bin.install "rec-darwin-arm64" => "rec"
  end

  def caveats
    <<~EOS
      rec needs an M4 Pro, M4 Max, M5 Pro or M5 Max with at least 48 GB of memory.
      Check this Mac with: rec doctor

      rec keeps its models, settings and sessions in ~/.local/share/rec.
      brew uninstall rec leaves them there.
    EOS
  end

  test do
    assert_match "rec #{version}", shell_output("#{bin}/rec --version")
  end
end
