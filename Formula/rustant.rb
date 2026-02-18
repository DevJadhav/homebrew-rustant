class Rustant < Formula
  desc "Privacy-first autonomous personal agent built in Rust"
  homepage "https://github.com/DevJadhav/Rustant"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-macos-aarch64.tar.gz"
      sha256 "84c8fa6e48655b425472af8e52d684e62c6d17df81f35d3d0636216942748ca3"
    else
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-macos-x86_64.tar.gz"
      sha256 "1fd539b0ec79d48d9b8f8ef7bebdb28575cede105e74c7aac39a0ad5a78fcd6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-linux-aarch64.tar.gz"
      sha256 "86c145386a78502187ef98546aad0de2b7fd092df058d0c9b9dfc11bc2c80f52"
    else
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-linux-x86_64.tar.gz"
      sha256 "d8d86c22b725d33d2ddc55ff46a53f056c9df34bcb9a9a9786ef5da530f57357"
    end
  end

  def install
    bin.install "rustant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustant --version")
  end
end
