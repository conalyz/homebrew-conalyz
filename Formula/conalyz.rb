class Conalyz < Formula
  desc "Flutter accessibility analyzer — static and runtime analysis"
  homepage "https://github.com/conalyz"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/conalyz/homebrew-conalyz/releases/download/v1.0.0/conalyz-macos-arm64"
      sha256 "f96c5d96fcc5be379cbc7ae0ec23c306e2bfd579e851eca69b489e2b1853ad9f"
    end
  end

  def install
    bin.install "conalyz-macos-arm64" => "conalyz"
  end

  test do
    assert_match "Conalyz v#{version}", shell_output("#{bin}/conalyz --version")
  end
end
