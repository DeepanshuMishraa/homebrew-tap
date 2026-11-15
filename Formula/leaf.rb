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
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.3/leaf-aarch64-apple-darwin.tar.gz"
      sha256 "efd6f4adbb3558bfaacc41f3328d15913f0847d986f4ebacc0bee0038cb658db"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.3/leaf-x86_64-apple-darwin.tar.gz"
      sha256 "a13443cc81953e926a15085576f2fb29626607ba7aa650d983ca1d05c8e224f1"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.3/leaf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f80bd0c4dc35de3f915e2beebd4f4c581040f76780c3236f159ab1a9e2a1fb10"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.3/leaf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9819cee745664ad9d45b51f515cff10ad2221c61f1609a44a9a26401b7f90c0d"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_equal "leaf #{version}", shell_output("#{bin}/leaf version").strip
  end
end
