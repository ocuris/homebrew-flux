class Flx < Formula
  desc "Ultra-high performance Go web framework CLI"
  homepage "https://github.com/ocuris/flux"
  url "https://github.com/ocuris/flux/archive/refs/tags/v1.4.5.tar.gz"
  sha256 "09ca8052e5ca30c5c6734201656c922154cf286c85f92c455ce4ee303c31651f"
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
