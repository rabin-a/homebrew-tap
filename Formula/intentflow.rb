class Intentflow < Formula
  desc "AI-agent and human shared memory layer for project intent"
  homepage "https://github.com/rabin-a/intentflow"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rabin-a/intentflow/releases/download/v#{version}/intentflow-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "82df58a58ee069c3a13bda761e1e6b1eaef27b38231294e689a8e945b856d102"
    else
      url "https://github.com/rabin-a/intentflow/releases/download/v#{version}/intentflow-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "14e4e899c84128f1ca49c4f96a74660698d4f797f8ba02784c4fd6ffd322ceba"
    end
  end

  def install
    bin.install "intentflow"
  end

  test do
    assert_match "intentflow", shell_output("#{bin}/intentflow --version")
  end
end
