class Rustant < Formula
  desc "Privacy-first autonomous personal agent built in Rust"
  homepage "https://github.com/DevJadhav/Rustant"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-macos-aarch64.tar.gz"
      sha256 "98e080c730ebd88ab37efebdd89deaa688cefa2cc0f80d6d9d0e8cb63afab00c"
    else
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-macos-x86_64.tar.gz"
      sha256 "47d4800a8650617a1de174d0b88f71be9d02a2d8a997aec57954568ab761ac3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-linux-aarch64.tar.gz"
      sha256 "a2fb723fe7b9623749d5ddfb950f2fae314c4819c1578f1a592d296f7e09485c"
    else
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-linux-x86_64.tar.gz"
      sha256 "04cdc0ff7a969c07881ebcc249deb43161bfa80f38a3ba2921c1e62a0c83c8ac"
    end
  end

  def install
    bin.install "rustant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustant --version")
  end
end
