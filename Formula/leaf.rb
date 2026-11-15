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
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.0/leaf-aarch64-apple-darwin.tar.gz"
      sha256 "1fbbc5fdaf3d44c996b0a07120f6d8203a5e42e88295c93a42f5b8dea0563636"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.0/leaf-x86_64-apple-darwin.tar.gz"
      sha256 "5f13cf1f142325cbcf6b342670366424532969866082cbdd8a2b3db617dfaa6d"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.0/leaf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e80300fd3aa88b370cf674df2f67787be109cb8a7ae230a8c7418cb2a4bbc869"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.0/leaf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b407bc14f83ad3e34406d558a545d0901914292e952824c536987b2ea9442914"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_equal "leaf #{version}", shell_output("#{bin}/leaf version").strip
  end
end
