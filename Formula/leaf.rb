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
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.15.2/leaf-aarch64-apple-darwin.tar.gz"
      sha256 "df11384025b254fc270ca31348946bda1c5daf220a426dce0e3136c1d149ee2e"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.15.2/leaf-x86_64-apple-darwin.tar.gz"
      sha256 "2036a8c46d188f4548113d33d94b531c389f0d5912951707a6a27b748bddfac8"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.15.2/leaf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e8c68dd4f54fea903b9728e06bcad24c33b93cec3c3c2d637be267e5eb72fd55"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.15.2/leaf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2579d745e1ed2c79f6199fc6329e07bc5e1d565e71652741a3a84714356ad778"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_equal "leaf #{version}", shell_output("#{bin}/leaf version").strip
  end
end
