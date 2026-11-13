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
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.15.0/leaf-aarch64-apple-darwin.tar.gz"
      sha256 "7e5389bae607199e3fa9cb6914d16306a60a1cae43c3b8d6f458cfcced233943"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.15.0/leaf-x86_64-apple-darwin.tar.gz"
      sha256 "c798260c861b08b57c2235a003c2cbcd920c12dd8e470558faf34c0c53c94b5d"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.15.0/leaf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "25a3b0387e21769b4413736a301f257d5740e1ef07883d947acdb4e9e440e606"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.15.0/leaf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b0d7adc15bfa5726ec83c04804f294fbd74364f414a12cc5603b53b516d9f50"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_equal "leaf #{version}", shell_output("#{bin}/leaf version").strip
  end
end
