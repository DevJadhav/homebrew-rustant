class Rustant < Formula
  desc "Privacy-first autonomous personal agent built in Rust"
  homepage "https://github.com/DevJadhav/Rustant"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-macos-aarch64.tar.gz"
      sha256 "e25880799ed4f8cda8af0e1bbb86752b0d6b151fe90c1ffadb53a72bb6efafba"
    else
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-macos-x86_64.tar.gz"
      sha256 "c65368324cbd492ee0a4dbab4acc1a3f28d8cbc636cf5626743d2289e7467421"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-linux-aarch64.tar.gz"
      sha256 "5a3c53c091784dc83b50a50b9eedc5643c1f97de9f552fb1e30392116cae2e6d"
    else
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-linux-x86_64.tar.gz"
      sha256 "2b082534611d3646c77321f0e0261b30d3cfa71f7f72ea253e39cdb438028986"
    end
  end

  def install
    bin.install "rustant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustant --version")
  end
end
