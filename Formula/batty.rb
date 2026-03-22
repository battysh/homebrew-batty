class Batty < Formula
  desc "Supervised agent execution for software teams"
  homepage "https://github.com/battysh/batty"
  url "https://github.com/battysh/batty/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6bbf3363975a283a7b63719de09a8424b291f44894f9487f5a1496f648390205"
  license "MIT"

  depends_on "rust" => :build
  depends_on "tmux"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "batty", shell_output("#{bin}/batty --version")
  end
end
