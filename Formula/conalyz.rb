class Conalyz < Formula
  desc "Flutter accessibility analyzer — static and runtime analysis"
  homepage "https://github.com/conalyz"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/conalyz/homebrew-conalyz/releases/download/v1.0.0/conalyz"
      sha256 "b5a7fd84ba6c56da2975e06e3765ee382ee0e6f1345413fbce2dff46b9f6e8de"
    end
  end

  def install
    bin.install "conalyz"
  end

  test do
    assert_match "Conalyz v#{version}", shell_output("#{bin}/conalyz --version")
  end
end
