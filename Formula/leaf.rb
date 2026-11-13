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
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.12.1/leaf-aarch64-apple-darwin.tar.gz"
      sha256 "ba5d894b5d72d9db281634717c9bb0288690287b07ba2e90d2effa09b66c91dc"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.12.1/leaf-x86_64-apple-darwin.tar.gz"
      sha256 "6a55c148317e65fc939b44add507ef66a8e94e276cad34f090c1bf878c278f79"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.12.1/leaf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5a3f64829c28575657ba8d08db59c06a9c19a6d75f48c745e83eb2c32c15d8ea"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.12.1/leaf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56aa0252d4d90fcd90af2ac9e1d4a5b46dceb5e16919e50888afda7a7eaedb16"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_equal "leaf #{version}", shell_output("#{bin}/leaf version").strip
  end
end
