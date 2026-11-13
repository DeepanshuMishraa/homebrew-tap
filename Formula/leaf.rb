class Leaf < Formula
  desc "Read PDFs, markdown files and web articles in the terminal, and review diffs"
  homepage "https://leaf.dipxsy.app"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.13.0/leaf-aarch64-apple-darwin.tar.gz"
      sha256 "cfe6ef8b0ea94cf92eecb949f0142a408d1af293f87dda4f85d5d2e799432041"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.13.0/leaf-x86_64-apple-darwin.tar.gz"
      sha256 "8a5573d0a74db2625c1cd55a1ea1387a33d9abebebafe12f07157b9c4d5fcc61"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.13.0/leaf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d32158f1a972d761d960f244d36390e66f76c5fa2e17ed6fdd522a07f9c66d4"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.13.0/leaf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15c64e3bc406ee6ecb2a658043e81f46a0fddd7dae5f0445d564c63ce479a654"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_equal "leaf #{version}", shell_output("#{bin}/leaf version").strip
  end
end
