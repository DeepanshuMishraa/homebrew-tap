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
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.1/leaf-aarch64-apple-darwin.tar.gz"
      sha256 "39f1c05dffee98270fb468045ddcd31d0bd03f6236a6651399683386e5fa0227"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.1/leaf-x86_64-apple-darwin.tar.gz"
      sha256 "e6d9d366b79777fe0c94f967864e0acb9c83ca0f408a190a3b7dc1ab1b10e9c8"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.1/leaf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4034943bb49836246ba2543dd6dc5d560d929ad58291f8a442edcc0400292ea4"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.16.1/leaf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d8539eea2a2a84f394cda80d5b2acc92116c6f3c6ee4b8f229bcafc55963322"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_equal "leaf #{version}", shell_output("#{bin}/leaf version").strip
  end
end
