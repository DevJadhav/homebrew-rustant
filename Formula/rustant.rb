class Rustant < Formula
  desc "Privacy-first autonomous personal agent built in Rust"
  homepage "https://github.com/DevJadhav/Rustant"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-macos-aarch64.tar.gz"
      sha256 "e37bd22369506a54909af1ce0cd0f4ee7d896e477a7bcf4475b83a85932dc12e"
    else
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-macos-x86_64.tar.gz"
      sha256 "498fab14e3deb2d6b72b1c88f7dfda7d1e25edf02dc5cfae6eeab29ead5ca967"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-linux-aarch64.tar.gz"
      sha256 "c791532b017a827a142c72d2fc1afbd8571e1f7909800adc044054e20f7e499a"
    else
      url "https://github.com/DevJadhav/Rustant/releases/download/v#{version}/rustant-linux-x86_64.tar.gz"
      sha256 "e70289994be2f985e60e9defcf766d988ba8dc469f9125780c7de8372fce4c8f"
    end
  end

  def install
    bin.install "rustant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustant --version")
  end
end
