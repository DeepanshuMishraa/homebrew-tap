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
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.17.3/leaf-aarch64-apple-darwin.tar.gz"
      sha256 "c7d3023619454c6c36f9c97a6ef328b6b2355c63147a8bb318b10e8b0572ba49"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.17.3/leaf-x86_64-apple-darwin.tar.gz"
      sha256 "4382cb9664804c582d28eea331c903e5c321a0eaea797ba33a343c1e7f5af87d"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.17.3/leaf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "827809f989157a9125cc30dda4c01dc1157ddb721ebed6bed2d3bb402c3dec54"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.17.3/leaf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "51d985aa5c8eaaa66718d3b8f293c86a577c5900f7e17849ed3b392bc7fd790a"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_equal "leaf #{version}", shell_output("#{bin}/leaf version").strip
  end
end
