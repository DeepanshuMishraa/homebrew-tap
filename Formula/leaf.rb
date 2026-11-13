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
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.15.1/leaf-aarch64-apple-darwin.tar.gz"
      sha256 "91abe50f24be7febda30d1b44697fb2a2ea3673e0a29ac3348ee8e35fa05b752"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.15.1/leaf-x86_64-apple-darwin.tar.gz"
      sha256 "be9294511a594ff20da8e284e73d128bfbcd91b3a6e2ff2659ac58458e0edce9"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.15.1/leaf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28507d8e8b8afeec8159bd63ee38bf233d83fbb6997c6448d4502a99c99573e6"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.15.1/leaf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80deaa4cc01e675cdd9e197ee69cd92df7f45d037779eb4d2895fe0f2fa08606"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_equal "leaf #{version}", shell_output("#{bin}/leaf version").strip
  end
end
