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
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.12.2/leaf-aarch64-apple-darwin.tar.gz"
      sha256 "fb9d0a5197c148d9b287064b2633af6467fd4af3c2a4fc6085b4e169b9feb249"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.12.2/leaf-x86_64-apple-darwin.tar.gz"
      sha256 "96ebbcfe02e00204a2ab584fbaba4ff9cf0fa657f3c08d23eda430bf22833045"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.12.2/leaf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e13f6033240082cb75d601ab16757af07a29227f10e3fea8d856af111847c0ed"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.12.2/leaf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "699f5573b59f4a0dbb25c7a10829ed265e39eed6c5bc764722b784d0351f2386"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_equal "leaf #{version}", shell_output("#{bin}/leaf version").strip
  end
end
