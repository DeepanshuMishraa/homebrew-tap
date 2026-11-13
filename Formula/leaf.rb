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
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.14.0/leaf-aarch64-apple-darwin.tar.gz"
      sha256 "4005bb7b30caeaa6b4de44ccba16ab80665b35d6ffbf167bfa385f852892efc6"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.14.0/leaf-x86_64-apple-darwin.tar.gz"
      sha256 "a3f2adb63fc08f4f4fe2fc5284917a887544bdab1f1c1ce041abe37e070adb50"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.14.0/leaf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e66029014c97c7a8c6ab19331c4e4f4e29e26f8993e3f185be187abd8f2c1b7a"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.14.0/leaf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37b8967e96840fbaf4165c1540c3ca0002b43b09c7e78113548602a5f8c33955"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_equal "leaf #{version}", shell_output("#{bin}/leaf version").strip
  end
end
