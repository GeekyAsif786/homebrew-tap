class Whatsup < Formula
  desc "See what's listening on your dev machine: ports, servers, databases, containers"
  homepage "https://github.com/GeekyAsif786/whatsup"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/GeekyAsif786/whatsup/releases/download/v0.1.0/whatsup-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "da46d488b57d02f07ac161977755d8407f24f7d1b2d07370e1d7412f88b4ed41"
    end
    on_intel do
      url "https://github.com/GeekyAsif786/whatsup/releases/download/v0.1.0/whatsup-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "4b6cb5febd66f69517898d394acf7bec6c2122b96820e7d6f78b5eb02b38bf3b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GeekyAsif786/whatsup/releases/download/v0.1.0/whatsup-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4029126599c52b387ea4a5dd461592919b17f759c13b4b04e0fb26c28a88f567"
    end
  end

  def install
    bin.install "whatsup"
  end

  test do
    assert_equal "whatsup #{version}", shell_output("#{bin}/whatsup --version").strip
  end
end
