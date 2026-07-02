class Conalyz < Formula
  desc "Flutter accessibility analyzer — static and runtime analysis"
  homepage "https://github.com/conalyz"
  version "1.2.0"

  on_macos do
    on_arm do
      url "https://github.com/conalyz/homebrew-conalyz/releases/download/v1.2.0/conalyz"
      sha256 "1bd8b0c26d7f8a92ae6cfb38c0a14d3fc65dbd6491a3d65c0c1a95bd7174aa5e"
    end
  end

  def install
    bin.install "conalyz"
  end

  test do
    assert_match "Conalyz v#{version}", shell_output("#{bin}/conalyz --version")
  end
end
