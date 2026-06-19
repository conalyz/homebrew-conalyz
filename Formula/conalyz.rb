class Conalyz < Formula
  desc "Flutter accessibility analyzer — static and runtime analysis"
  homepage "https://github.com/conalyz"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/conalyz/homebrew-conalyz/releases/download/v1.1.0/conalyz"
      sha256 "6740c706f4ec557d1d3735eaadada81dc10f3ba6e8930cfd64c0a5e5dd757dd7"
    end
  end

  def install
    bin.install "conalyz"
  end

  test do
    assert_match "Conalyz v#{version}", shell_output("#{bin}/conalyz --version")
  end
end
