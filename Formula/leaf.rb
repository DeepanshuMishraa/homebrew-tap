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
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.2/leaf-aarch64-apple-darwin.tar.gz"
      sha256 "4a4ad61278e450517871b7d14cd18480d7aa710ab5bbd1583c99d5f096a9dd62"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.2/leaf-x86_64-apple-darwin.tar.gz"
      sha256 "c1edb5a8e603065d96440d0829a3f5fceaf4d76f2b37cc7415a355df418c187a"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.2/leaf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a61edb00d513324f7d5ecfe50666ac705ad2a67df37b4123ce0e40063c80176e"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.2/leaf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c15e39753df1c4aeb85c2db246ed612ee042951586d923cd10e91d45167c1bf"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_equal "leaf #{version}", shell_output("#{bin}/leaf version").strip
  end
end
