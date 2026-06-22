class Conalyz < Formula
  desc "Flutter accessibility analyzer — static and runtime analysis"
  homepage "https://github.com/conalyz"
  version "1.1.1"

  on_macos do
    on_arm do
      url "https://github.com/conalyz/homebrew-conalyz/releases/download/v1.1.1/conalyz"
      sha256 "779037c3768c4f5c7060e4dce477afd86465bfd0b7b461b53c4a1452b5401a73"
    end
  end

  def install
    bin.install "conalyz"
  end

  test do
    assert_match "Conalyz v#{version}", shell_output("#{bin}/conalyz --version")
  end
end
