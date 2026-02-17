class Rustant < Formula
  desc "Privacy-first autonomous personal agent built in Rust"
  homepage "https://github.com/DevJadhav/Rustant"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-macos-aarch64.tar.gz"
      sha256 "1d32501dbb81fbf063e3afdd614bf30a71a2e934e90cd0d1dbd2141190b7a15f"
    else
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-macos-x86_64.tar.gz"
      sha256 "4fe3c44b184639ce187f55a9b314639ddbc710c8601b7d8a3825a6729f5591cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-linux-aarch64.tar.gz"
      sha256 "cbca55096570911d7de67d3f109aca92a64ebaea17b5c719410d2f6787f5f80f"
    else
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-linux-x86_64.tar.gz"
      sha256 "e899a15391a3261d73b9d7e21c4ecffd079c37ef40584b7a78a2b967b25669fe"
    end
  end

  def install
    bin.install "rustant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustant --version")
  end
end
