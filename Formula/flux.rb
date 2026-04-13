class Flux < Formula
  desc "Ultra-high performance Go web framework CLI with live-reload"
  homepage "https://github.com/ocuris/flux"
  url "https://github.com/ocuris/flux/archive/refs/tags/v1.2.2.tar.gz"
  sha256 "040385c0e354641813a6d1e5fe421a7208a4f0b47ce584581fbddad4c300a090"
  license "MIT"

  depends_on "go" => :build

  def install
    # Build the binary with optimized flags (-s -w strips debug symbols)
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"flux"), "./cmd/flux"
  end

  test do
    # Verify the installation and version alignment
    assert_match "Flux CLI v#{version}", shell_output("#{bin}/flux --version")
  end
end
