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
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.17.0/leaf-aarch64-apple-darwin.tar.gz"
      sha256 "79495896b444f830b54ccf2f822070b7a4d0602e1530a1f4bfb74901d4f5ccbe"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.17.0/leaf-x86_64-apple-darwin.tar.gz"
      sha256 "03fb0bc350b463d50d3fd3cb3928ec18caf50709a809f441ede08129378ae025"
    end
  end

  on_linux do
    depends_on "alsa-lib"

    on_arm do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.17.0/leaf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9f4b5fc9dc44c040a24a8f679e86e689cb039372cfed392987eb6f7f52f139af"
    end
    on_intel do
      url "https://github.com/DeepanshuMishraa/leaf/releases/download/v0.17.0/leaf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8d302ed3d90649e29cc8063efec2a50f869a13479cde6ff28edb51ab9e40af30"
    end
  end

  def install
    bin.install "leaf"
  end

  test do
    assert_equal "leaf #{version}", shell_output("#{bin}/leaf version").strip
  end
end
