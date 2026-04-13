class Flx < Formula
  desc "Ultra-high performance Go web framework CLI"
  homepage "https://github.com/ocuris/flux"
  url "https://github.com/ocuris/flux/archive/refs/tags/v1.4.1.tar.gz"
  sha256 "d0f0c12b9fcade2ace6d8282062cb3d41f8c5f278f4d3380cb56712a0f764344"
  license "MIT"

  depends_on "go" => :build

  def install
    # Professional build with stripped debug symbols for a lean binary
    system "go", "build", "-o", bin/"flx", "./cmd/flux"
  end

  test do
    assert_match "FLUX CLI v", shell_output("#{bin}/flx --version")
  end
end
