class Intentflow < Formula
  desc "AI-agent and human shared memory layer for project intent"
  homepage "https://github.com/rabin-a/intentflow"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rabin-a/intentflow/releases/download/v#{version}/intentflow-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/rabin-a/intentflow/releases/download/v#{version}/intentflow-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "intentflow"
  end

  test do
    assert_match "intentflow", shell_output("#{bin}/intentflow --version")
  end
end
