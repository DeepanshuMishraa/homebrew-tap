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
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.17.1/leaf-aarch64-apple-darwin.tar.gz"
      sha256 "35e244605e6a1ee371d3762147476b885f70b2052e11bdfb7d199d56b9ecde44"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.17.1/leaf-x86_64-apple-darwin.tar.gz"
      sha256 "9261f9a6b520d64026bae9527603fbc4714c008c7a5cd7b25aa35be8f4176f62"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.17.1/leaf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "00667a438aa0b1d3bd5be8d6341bd314721cf1ba4d4bc952374c9bf73c821bf8"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.17.1/leaf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45b14dac69bdf782c5a67cd7cd584552900281ef007cc597ba386156c49e3416"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_equal "leaf #{version}", shell_output("#{bin}/leaf version").strip
  end
end
