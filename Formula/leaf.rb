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
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.17.2/leaf-aarch64-apple-darwin.tar.gz"
      sha256 "e74e6d7ccdb5ee258521dbe4ccfcd828c38ecd24e356727a6bdd3c7ad39e3423"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.17.2/leaf-x86_64-apple-darwin.tar.gz"
      sha256 "05d08eec9f2284ad94b6a32e91204d73c59a4ddad286c34476b37b8fb178e46e"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.17.2/leaf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64899da09c63062d2905ce8cd7f6bf19fada365b97a3f8a5f05937909140047d"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.17.2/leaf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c14475741f46c19f14e542bfa06bb7821e96eaff9abaa13c82fb54273a07cb7"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_equal "leaf #{version}", shell_output("#{bin}/leaf version").strip
  end
end
