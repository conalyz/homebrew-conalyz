class Conalyz < Formula
  desc "Flutter accessibility analyzer — static and runtime analysis"
  homepage "https://github.com/conalyz"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/conalyz/homebrew-conalyz/releases/download/v1.0.0/conalyz"
      sha256 "c5ae6d86401dd7002f7fdb0d65f4fb13b02eb7ab173b87abbcd1c74e073b3d15"
    end
  end

  def install
    bin.install "conalyz"
  end

  test do
    assert_match "Conalyz v#{version}", shell_output("#{bin}/conalyz --version")
  end
end
