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
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.4/leaf-aarch64-apple-darwin.tar.gz"
      sha256 "2b7491202d944d6c156f27e136d23f736fe39c9595578270a3c9c91e24a08783"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.4/leaf-x86_64-apple-darwin.tar.gz"
      sha256 "508cb462782eb431f028d9dc25d0278e3e9efe07a0bcbfafd0fb983e341f9a18"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.4/leaf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "94a1693a076eec2b9fa19e51b785b2af7f9c2ca74f15ce3e1b31784996d2096d"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.4/leaf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08cf6ebf79e1fded654d81de2dd11cffeca3443cb8f90e6994176cd31db752ee"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_equal "leaf #{version}", shell_output("#{bin}/leaf version").strip
  end
end
