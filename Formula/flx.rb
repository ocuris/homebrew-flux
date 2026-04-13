class Flx < Formula
  desc "Ultra-high performance Go web framework CLI"
  homepage "https://github.com/ocuris/flux"
  url "https://github.com/ocuris/flux/archive/refs/tags/v1.2.2.tar.gz"
  sha256 "040385c0e354641813a6d1e5fe421a7208a4f0b47ce584581fbddad4c300a090"
  license "MIT"

  depends_on "go" => :build

  def install
    # Use minimalist naming 'flx'
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"flx"), "./cmd/flux"
  end

  test do
    assert_match "FLUX CLI v", shell_output("#{bin}/flx --version")
  end
end
EOF
