class Intentflow < Formula
  desc "AI-agent and human shared memory layer for project intent"
  homepage "https://github.com/rabin-a/intentflow"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rabin-a/intentflow/releases/download/v#{version}/intentflow-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8c2647490239d8547d4aab9467a37b1753f29cc35fd92b6b6436fdf5fc5fe5f3"
    else
      url "https://github.com/rabin-a/intentflow/releases/download/v#{version}/intentflow-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3298067bbc6a66372908bd69fd59aadb46ffd0c9218e15547355af011576a622"
    end
  end

  def install
    bin.install "intentflow"
  end

  test do
    assert_match "intentflow", shell_output("#{bin}/intentflow --version")
  end
end
