class Batty < Formula
  desc "Supervised agent execution for software teams"
  homepage "https://github.com/battysh/batty"
  url "https://github.com/battysh/batty/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "a85cda24f46bd3620dc8c98b53ae0a5ab7a48d53c3f3903d775033454d02807c"
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
