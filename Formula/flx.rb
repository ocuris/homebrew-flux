class Flx < Formula
  desc "Ultra-high performance Go web framework CLI"
  homepage "https://github.com/ocuris/flux"
  url "https://github.com/ocuris/flux/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "3c4437c08537ede93e3f300e055e09205a4a0dbe701300eeda3077d789692d57"
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
